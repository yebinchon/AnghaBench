#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct talitos_request {int /*<<< orphan*/  context; TYPE_2__* desc; int /*<<< orphan*/  (* callback ) (struct device*,TYPE_2__*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  dma_desc; } ;
struct talitos_private {int fifo_len; TYPE_1__* chan; } ;
struct talitos_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int hdr; } ;
struct TYPE_3__ {int tail; int /*<<< orphan*/  tail_lock; int /*<<< orphan*/  submit_count; struct talitos_request* fifo; } ;

/* Variables and functions */
 int DESC_HDR_DONE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct talitos_private* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct device *dev, int ch, int error, int reset_ch)
{
	struct talitos_private *priv = FUNC1(dev);
	struct talitos_request *request, saved_req;
	unsigned long flags;
	int tail, status;

	FUNC5(&priv->chan[ch].tail_lock, flags);

	tail = priv->chan[ch].tail;
	while (priv->chan[ch].fifo[tail].desc) {
		request = &priv->chan[ch].fifo[tail];

		/* descriptors with their done bits set don't get the error */
		FUNC3();
		if ((request->desc->hdr & DESC_HDR_DONE) == DESC_HDR_DONE)
			status = 0;
		else
			if (!error)
				break;
			else
				status = error;

		FUNC2(dev, request->dma_desc,
				 sizeof(struct talitos_desc),
				 DMA_BIDIRECTIONAL);

		/* copy entries so we can call callback outside lock */
		saved_req.desc = request->desc;
		saved_req.callback = request->callback;
		saved_req.context = request->context;

		/* release request entry in fifo */
		FUNC4();
		request->desc = NULL;

		/* increment fifo tail */
		priv->chan[ch].tail = (tail + 1) & (priv->fifo_len - 1);

		FUNC6(&priv->chan[ch].tail_lock, flags);

		FUNC0(&priv->chan[ch].submit_count);

		saved_req.callback(dev, saved_req.desc, saved_req.context,
				   status);
		/* channel may resume processing in single desc error case */
		if (error && !reset_ch && status == error)
			return;
		FUNC5(&priv->chan[ch].tail_lock, flags);
		tail = priv->chan[ch].tail;
	}

	FUNC6(&priv->chan[ch].tail_lock, flags);
}