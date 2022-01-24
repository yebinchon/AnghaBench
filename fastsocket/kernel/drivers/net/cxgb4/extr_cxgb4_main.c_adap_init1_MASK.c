#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct fw_caps_config_cmd {int niccaps; void* op_to_write; void* retval_len16; } ;
struct adapter {int /*<<< orphan*/  fn; int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int CSUM_HAS_PSEUDO_HDR ; 
 int /*<<< orphan*/  FW_CAPS_CONFIG_CMD ; 
 int /*<<< orphan*/  FW_CAPS_CONFIG_NIC_VM ; 
 int /*<<< orphan*/  FW_CMD_CAP_PF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_READ ; 
 int FW_CMD_REQUEST ; 
 int FW_CMD_WRITE ; 
 int FUNC1 (struct fw_caps_config_cmd) ; 
 int /*<<< orphan*/  FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ; 
 int FW_RSS_GLB_CONFIG_CMD_TNLALLLKP ; 
 int FW_RSS_GLB_CONFIG_CMD_TNLMAPEN ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  MAX_EGRQ ; 
 int /*<<< orphan*/  MAX_INGQ ; 
 scalar_t__ PAGE_SHIFT ; 
 int TP_INGRESS_CONFIG ; 
 int /*<<< orphan*/  TP_PIO_ADDR ; 
 int /*<<< orphan*/  TP_PIO_DATA ; 
 int /*<<< orphan*/  TP_SHIFT_CNT ; 
 int /*<<< orphan*/  ULP_RX_TDDP_PSZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_caps_config_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 int FUNC12 (struct adapter*,int /*<<< orphan*/ ,struct fw_caps_config_cmd*,int,struct fw_caps_config_cmd*) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ vf_acls ; 

__attribute__((used)) static int FUNC14(struct adapter *adap, struct fw_caps_config_cmd *c)
{
	u32 v;
	int ret;

	/* get device capabilities */
	FUNC6(c, 0, sizeof(*c));
	c->op_to_write = FUNC4(FUNC0(FW_CAPS_CONFIG_CMD) |
			       FW_CMD_REQUEST | FW_CMD_READ);
	c->retval_len16 = FUNC4(FUNC1(*c));
	ret = FUNC12(adap, adap->fn, c, sizeof(*c), c);
	if (ret < 0)
		return ret;

	/* select capabilities we'll be using */
	if (c->niccaps & FUNC5(FW_CAPS_CONFIG_NIC_VM)) {
		if (!vf_acls)
			c->niccaps ^= FUNC5(FW_CAPS_CONFIG_NIC_VM);
		else
			c->niccaps = FUNC5(FW_CAPS_CONFIG_NIC_VM);
	} else if (vf_acls) {
		FUNC3(adap->pdev_dev, "virtualization ACLs not supported");
		return ret;
	}
	c->op_to_write = FUNC4(FUNC0(FW_CAPS_CONFIG_CMD) |
			       FW_CMD_REQUEST | FW_CMD_WRITE);
	ret = FUNC12(adap, adap->fn, c, sizeof(*c), NULL);
	if (ret < 0)
		return ret;

	ret = FUNC8(adap, adap->fn,
				 FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL,
				 FW_RSS_GLB_CONFIG_CMD_TNLMAPEN |
				 FW_RSS_GLB_CONFIG_CMD_TNLALLLKP);
	if (ret < 0)
		return ret;

	ret = FUNC7(adap, adap->fn, adap->fn, 0, MAX_EGRQ, 64, MAX_INGQ,
			  0, 0, 4, 0xf, 0xf, 16, FW_CMD_CAP_PF, FW_CMD_CAP_PF);
	if (ret < 0)
		return ret;

	FUNC11(adap);

	/* tweak some settings */
	FUNC13(adap, TP_SHIFT_CNT, 0x64f8849);
	FUNC13(adap, ULP_RX_TDDP_PSZ, FUNC2(PAGE_SHIFT - 12));
	FUNC13(adap, TP_PIO_ADDR, TP_INGRESS_CONFIG);
	v = FUNC10(adap, TP_PIO_DATA);
	FUNC13(adap, TP_PIO_DATA, v & ~CSUM_HAS_PSEUDO_HDR);

	/* get basic stuff going */
	return FUNC9(adap, adap->fn);
}