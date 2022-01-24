#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct talitos_request {void (* callback ) (struct device*,struct talitos_desc*,void*,int) ;int /*<<< orphan*/  dma_desc; struct talitos_desc* desc; void* context; } ;
struct talitos_private {int num_channels; int fifo_len; TYPE_1__* chan; scalar_t__ reg; int /*<<< orphan*/  last_chan; } ;
struct talitos_desc {int /*<<< orphan*/  hdr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int head; int /*<<< orphan*/  head_lock; struct talitos_request* fifo; int /*<<< orphan*/  submit_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DESC_HDR_DONE_NOTIFY ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct talitos_private* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct talitos_desc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int FUNC14(struct device *dev, struct talitos_desc *desc,
			  void (*callback)(struct device *dev,
					   struct talitos_desc *desc,
					   void *context, int error),
			  void *context)
{
	struct talitos_private *priv = FUNC5(dev);
	struct talitos_request *request;
	unsigned long flags, ch;
	int head;

	/* select done notification */
	desc->hdr |= DESC_HDR_DONE_NOTIFY;

	/* emulate SEC's round-robin channel fifo polling scheme */
	ch = FUNC3(&priv->last_chan) & (priv->num_channels - 1);

	FUNC10(&priv->chan[ch].head_lock, flags);

	if (!FUNC2(&priv->chan[ch].submit_count)) {
		/* h/w fifo is full */
		FUNC11(&priv->chan[ch].head_lock, flags);
		return -EAGAIN;
	}

	head = priv->chan[ch].head;
	request = &priv->chan[ch].fifo[head];

	/* map descriptor and save caller data */
	request->dma_desc = FUNC6(dev, desc, sizeof(*desc),
					   DMA_BIDIRECTIONAL);
	request->callback = callback;
	request->context = context;

	/* increment fifo head */
	priv->chan[ch].head = (priv->chan[ch].head + 1) & (priv->fifo_len - 1);

	FUNC9();
	request->desc = desc;

	/* GO! */
	FUNC13();
	FUNC8(priv->reg + FUNC0(ch),
		 FUNC4(FUNC12(request->dma_desc)));
	FUNC8(priv->reg + FUNC1(ch),
		 FUNC4(FUNC7(request->dma_desc)));

	FUNC11(&priv->chan[ch].head_lock, flags);

	return -EINPROGRESS;
}