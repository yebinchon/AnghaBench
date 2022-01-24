#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ipu {int dummy; } ;
struct idmac_video_param {int /*<<< orphan*/  out_stride; int /*<<< orphan*/  out_height; int /*<<< orphan*/  out_width; int /*<<< orphan*/  out_pixel_fmt; } ;
struct idmac_tx_desc {int /*<<< orphan*/  list; int /*<<< orphan*/ * sg; } ;
struct TYPE_7__ {scalar_t__ cookie; TYPE_1__* dev; } ;
struct TYPE_6__ {struct idmac_video_param video; } ;
struct idmac_channel {scalar_t__ status; int /*<<< orphan*/  chan_mutex; TYPE_3__ dma_chan; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; scalar_t__* sg; TYPE_2__ params; } ;
struct idmac {int dummy; } ;
struct dma_async_tx_descriptor {scalar_t__ cookie; TYPE_4__* chan; } ;
struct device {int dummy; } ;
typedef  scalar_t__ dma_cookie_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {struct device device; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ IPU_CHANNEL_ENABLED ; 
 scalar_t__ IPU_CHANNEL_READY ; 
 int /*<<< orphan*/  IPU_ROTATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu*) ; 
 int FUNC5 (struct idmac*,struct idmac_channel*) ; 
 scalar_t__ FUNC6 (struct idmac_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct idmac_channel*,struct idmac_tx_desc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 struct idmac* FUNC17 (int /*<<< orphan*/ ) ; 
 struct idmac_channel* FUNC18 (TYPE_4__*) ; 
 struct ipu* FUNC19 (struct idmac*) ; 
 struct idmac_tx_desc* FUNC20 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static dma_cookie_t FUNC21(struct dma_async_tx_descriptor *tx)
{
	struct idmac_tx_desc *desc = FUNC20(tx);
	struct idmac_channel *ichan = FUNC18(tx->chan);
	struct idmac *idmac = FUNC17(tx->chan->device);
	struct ipu *ipu = FUNC19(idmac);
	struct device *dev = &ichan->dma_chan.dev->device;
	dma_cookie_t cookie;
	unsigned long flags;
	int ret;

	/* Sanity check */
	if (!FUNC10(&desc->list)) {
		/* The descriptor doesn't belong to client */
		FUNC3(dev, "Descriptor %p not prepared!\n", tx);
		return -EBUSY;
	}

	FUNC11(&ichan->chan_mutex);

	FUNC1(tx);

	if (ichan->status < IPU_CHANNEL_READY) {
		struct idmac_video_param *video = &ichan->params.video;
		/*
		 * Initial buffer assignment - the first two sg-entries from
		 * the descriptor will end up in the IDMAC buffers
		 */
		dma_addr_t dma_1 = FUNC14(desc->sg) ? 0 :
			FUNC13(&desc->sg[1]);

		FUNC0(ichan->sg[0] || ichan->sg[1]);

		cookie = FUNC6(ichan,
						 video->out_pixel_fmt,
						 video->out_width,
						 video->out_height,
						 video->out_stride,
						 IPU_ROTATE_NONE,
						 FUNC13(&desc->sg[0]),
						 dma_1);
		if (cookie < 0)
			goto out;
	}

	FUNC2(dev, "Submitting sg %p\n", &desc->sg[0]);

	cookie = ichan->dma_chan.cookie;

	if (++cookie < 0)
		cookie = 1;

	/* from dmaengine.h: "last cookie value returned to client" */
	ichan->dma_chan.cookie = cookie;
	tx->cookie = cookie;

	/* ipu->lock can be taken under ichan->lock, but not v.v. */
	FUNC15(&ichan->lock, flags);

	FUNC8(&desc->list, &ichan->queue);
	/* submit_buffers() atomically verifies and fills empty sg slots */
	ret = FUNC7(ichan, desc);

	FUNC16(&ichan->lock, flags);

	if (ret < 0) {
		cookie = ret;
		goto dequeue;
	}

	if (ichan->status < IPU_CHANNEL_ENABLED) {
		ret = FUNC5(idmac, ichan);
		if (ret < 0) {
			cookie = ret;
			goto dequeue;
		}
	}

	FUNC4(ipu);

dequeue:
	if (cookie < 0) {
		FUNC15(&ichan->lock, flags);
		FUNC9(&desc->list);
		FUNC16(&ichan->lock, flags);
		tx->cookie = cookie;
		ichan->dma_chan.cookie = cookie;
	}

out:
	FUNC12(&ichan->chan_mutex);

	return cookie;
}