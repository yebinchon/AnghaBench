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
typedef  union chan_param_mem {int dummy; } chan_param_mem ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ipu {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int chan_id; int /*<<< orphan*/  device; } ;
struct idmac_channel {int /*<<< orphan*/  status; TYPE_1__ dma_chan; } ;
struct idmac {int dummy; } ;
typedef  enum pixel_fmt { ____Placeholder_pixel_fmt } pixel_fmt ;
typedef  enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;
typedef  enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
#define  IDMAC_IC_0 131 
 int IDMAC_IC_13 ; 
#define  IDMAC_IC_7 130 
#define  IDMAC_SDC_0 129 
#define  IDMAC_SDC_1 128 
 int /*<<< orphan*/  IPU_CHANNEL_READY ; 
 int /*<<< orphan*/  IPU_CHA_DB_MODE_SEL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ipu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union chan_param_mem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union chan_param_mem*,int) ; 
 int /*<<< orphan*/  FUNC7 (union chan_param_mem*,int) ; 
 int /*<<< orphan*/  FUNC8 (union chan_param_mem*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct idmac* FUNC12 (int /*<<< orphan*/ ) ; 
 struct ipu* FUNC13 (struct idmac*) ; 

__attribute__((used)) static int FUNC14(struct idmac_channel *ichan,
				   enum pixel_fmt pixel_fmt,
				   uint16_t width, uint16_t height,
				   uint32_t stride,
				   enum ipu_rotate_mode rot_mode,
				   dma_addr_t phyaddr_0, dma_addr_t phyaddr_1)
{
	enum ipu_channel channel = ichan->dma_chan.chan_id;
	struct idmac *idmac = FUNC12(ichan->dma_chan.device);
	struct ipu *ipu = FUNC13(idmac);
	union chan_param_mem params = {};
	unsigned long flags;
	uint32_t reg;
	uint32_t stride_bytes;

	stride_bytes = stride * FUNC0(pixel_fmt);

	if (stride_bytes % 4) {
		FUNC1(ipu->dev,
			"Stride length must be 32-bit aligned, stride = %d, bytes = %d\n",
			stride, stride_bytes);
		return -EINVAL;
	}

	/* IC channel's stride must be a multiple of 8 pixels */
	if ((channel <= IDMAC_IC_13) && (stride % 8)) {
		FUNC1(ipu->dev, "Stride must be 8 pixel multiple\n");
		return -EINVAL;
	}

	/* Build parameter memory data for DMA channel */
	FUNC8(&params, pixel_fmt, width, height, stride_bytes);
	FUNC5(&params, phyaddr_0, phyaddr_1);
	FUNC7(&params, rot_mode);
	/* Some channels (rotation) have restriction on burst length */
	switch (channel) {
	case IDMAC_IC_7:	/* Hangs with burst 8, 16, other values
				   invalid - Table 44-30 */
/*
		ipu_ch_param_set_burst_size(&params, 8);
 */
		break;
	case IDMAC_SDC_0:
	case IDMAC_SDC_1:
		/* In original code only IPU_PIX_FMT_RGB565 was setting burst */
		FUNC6(&params, 16);
		break;
	case IDMAC_IC_0:
	default:
		break;
	}

	FUNC10(&ipu->lock, flags);

	FUNC9(FUNC2(channel), (uint32_t *)&params, 10);

	reg = FUNC3(ipu, IPU_CHA_DB_MODE_SEL);

	if (phyaddr_1)
		reg |= 1UL << channel;
	else
		reg &= ~(1UL << channel);

	FUNC4(ipu, reg, IPU_CHA_DB_MODE_SEL);

	ichan->status = IPU_CHANNEL_READY;

	FUNC11(&ipu->lock, flags);

	return 0;
}