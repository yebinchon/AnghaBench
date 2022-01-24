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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct hcp_modify_qp_cb0 {int qp_ctl_reg; } ;
struct ehea_qp {int /*<<< orphan*/  fw_handle; } ;
struct ehea_port_res {struct ehea_qp* qp; } ;
struct ehea_port {int num_def_qps; struct ehea_port_res* port_res; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  H_QPCB0_ALL ; 
 int /*<<< orphan*/  H_QPCB0_QP_CTL_REG ; 
 int H_QP_CR_ENABLED ; 
 int H_QP_CR_RES_STATE ; 
 scalar_t__ H_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_modify_qp_cb0*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hcp_modify_qp_cb0*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehea_qp*) ; 
 int FUNC5 (struct ehea_port_res*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct ehea_port* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct ehea_port *port = FUNC8(dev);
	struct ehea_adapter *adapter = port->adapter;
	struct hcp_modify_qp_cb0 *cb0;
	int ret = -EIO;
	int dret;
	int i;
	u64 hret;
	u64 dummy64 = 0;
	u16 dummy16 = 0;

	cb0 = (void *)FUNC7(GFP_KERNEL);
	if (!cb0) {
		ret = -ENOMEM;
		goto out;
	}

	for (i = 0; i < (port->num_def_qps); i++) {
		struct ehea_port_res *pr =  &port->port_res[i];
		struct ehea_qp *qp = pr->qp;

		/* Purge send queue */
		FUNC4(qp);

		/* Disable queue pair */
		hret = FUNC3(adapter->handle, 0, qp->fw_handle,
					    FUNC0(H_QPCB0_ALL, 0xFFFF),
					    cb0);
		if (hret != H_SUCCESS) {
			FUNC1("query_ehea_qp failed (1)");
			goto out;
		}

		cb0->qp_ctl_reg = (cb0->qp_ctl_reg & H_QP_CR_RES_STATE) << 8;
		cb0->qp_ctl_reg &= ~H_QP_CR_ENABLED;

		hret = FUNC2(adapter->handle, 0, qp->fw_handle,
					     FUNC0(H_QPCB0_QP_CTL_REG,
							    1), cb0, &dummy64,
					     &dummy64, &dummy16, &dummy16);
		if (hret != H_SUCCESS) {
			FUNC1("modify_ehea_qp failed (1)");
			goto out;
		}

		hret = FUNC3(adapter->handle, 0, qp->fw_handle,
					    FUNC0(H_QPCB0_ALL, 0xFFFF),
					    cb0);
		if (hret != H_SUCCESS) {
			FUNC1("query_ehea_qp failed (2)");
			goto out;
		}

		/* deregister shared memory regions */
		dret = FUNC5(pr);
		if (dret) {
			FUNC1("unreg shared memory region failed");
			goto out;
		}
	}

	ret = 0;
out:
	FUNC6((unsigned long)cb0);

	return ret;
}