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
typedef  scalar_t__ u64 ;
typedef  size_t u32 ;
struct ehea_qp {int /*<<< orphan*/  fw_handle; } ;
struct ehea_port {int /*<<< orphan*/  qp_eq; int /*<<< orphan*/  adapter; TYPE_1__* port_res; } ;
struct ehea_eqe {int /*<<< orphan*/  entry; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct ehea_qp* qp; } ;

/* Variables and functions */
 scalar_t__ EHEA_AERR_RESET_MASK ; 
 scalar_t__ EHEA_AER_RESET_MASK ; 
 scalar_t__ EHEA_AER_RESTYPE_QP ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EHEA_EQE_QP_TOKEN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 struct ehea_eqe* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ehea_port*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *param)
{
	struct ehea_port *port = param;
	struct ehea_eqe *eqe;
	struct ehea_qp *qp;
	u32 qp_token;
	u64 resource_type, aer, aerr;
	int reset_port = 0;

	eqe = FUNC3(port->qp_eq);

	while (eqe) {
		qp_token = FUNC0(EHEA_EQE_QP_TOKEN, eqe->entry);
		FUNC1("QP aff_err: entry=0x%llx, token=0x%x",
			   eqe->entry, qp_token);

		qp = port->port_res[qp_token].qp;

		resource_type = FUNC2(port->adapter, qp->fw_handle,
						&aer, &aerr);

		if (resource_type == EHEA_AER_RESTYPE_QP) {
			if ((aer & EHEA_AER_RESET_MASK) ||
			    (aerr & EHEA_AERR_RESET_MASK))
				 reset_port = 1;
		} else
			reset_port = 1;   /* Reset in case of CQ or EQ error */

		eqe = FUNC3(port->qp_eq);
	}

	if (reset_port) {
		FUNC1("Resetting port");
		FUNC4(port);
	}

	return IRQ_HANDLED;
}