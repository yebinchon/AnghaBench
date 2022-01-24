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
typedef  union ipu_channel_param {int dummy; } ipu_channel_param ;
typedef  int uint32_t ;
struct ipu {long channel_init_mask; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int chan_id; } ;
struct idmac_channel {int /*<<< orphan*/  desc; TYPE_1__ dma_chan; union ipu_channel_param params; } ;
struct idmac {int dummy; } ;
typedef  enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;

/* Variables and functions */
 int EINVAL ; 
 int FS_ENC_IN_VALID ; 
 int /*<<< orphan*/  IC_CONF ; 
 int IC_CONF_CSI_MEM_WR_EN ; 
#define  IDMAC_IC_0 131 
#define  IDMAC_IC_7 130 
#define  IDMAC_SDC_0 129 
#define  IDMAC_SDC_1 128 
 int /*<<< orphan*/  IPU_CONF ; 
 int /*<<< orphan*/  IPU_FS_PROC_FLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu*) ; 
 int FUNC2 (struct idmac_channel*,int) ; 
 int FUNC3 (struct ipu*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ipu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipu*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int FUNC8 (struct ipu*,union ipu_channel_param*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipu* FUNC11 (struct idmac*) ; 

__attribute__((used)) static int FUNC12(struct idmac *idmac, struct idmac_channel *ichan)
{
	union ipu_channel_param *params = &ichan->params;
	uint32_t ipu_conf;
	enum ipu_channel channel = ichan->dma_chan.chan_id;
	unsigned long flags;
	uint32_t reg;
	struct ipu *ipu = FUNC11(idmac);
	int ret = 0, n_desc = 0;

	FUNC0(ipu->dev, "init channel = %d\n", channel);

	if (channel != IDMAC_SDC_0 && channel != IDMAC_SDC_1 &&
	    channel != IDMAC_IC_7)
		return -EINVAL;

	FUNC9(&ipu->lock, flags);

	switch (channel) {
	case IDMAC_IC_7:
		n_desc = 16;
		reg = FUNC3(ipu, IC_CONF);
		FUNC5(ipu, reg & ~IC_CONF_CSI_MEM_WR_EN, IC_CONF);
		break;
	case IDMAC_IC_0:
		n_desc = 16;
		reg = FUNC4(ipu, IPU_FS_PROC_FLOW);
		FUNC6(ipu, reg & ~FS_ENC_IN_VALID, IPU_FS_PROC_FLOW);
		ret = FUNC8(ipu, params, true);
		break;
	case IDMAC_SDC_0:
	case IDMAC_SDC_1:
		n_desc = 4;
	default:
		break;
	}

	ipu->channel_init_mask |= 1L << channel;

	/* Enable IPU sub module */
	ipu_conf = FUNC4(ipu, IPU_CONF) |
		FUNC7(channel);
	FUNC6(ipu, ipu_conf, IPU_CONF);

	FUNC10(&ipu->lock, flags);

	if (n_desc && !ichan->desc)
		ret = FUNC2(ichan, n_desc);

	FUNC1(ipu);

	return ret;
}