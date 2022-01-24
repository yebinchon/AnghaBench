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
struct fcoe_port {int /*<<< orphan*/  timer; } ;
struct fcoe_ctlr {struct fc_lport* lp; } ;
struct fc_lport {int dummy; } ;
struct bnx2fc_interface {struct bnx2fc_hba* hba; } ;
struct bnx2fc_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2fc_hba*,struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2fc_interface*) ; 
 struct fcoe_ctlr* FUNC2 (struct bnx2fc_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 struct fcoe_port* FUNC5 (struct fc_lport*) ; 

__attribute__((used)) static void FUNC6(struct bnx2fc_interface *interface)
{
	struct fcoe_ctlr *ctlr = FUNC2(interface);
	struct fc_lport *lport = ctlr->lp;
	struct fcoe_port *port = FUNC5(lport);
	struct bnx2fc_hba *hba = interface->hba;

	/* Stop the transmit retry timer */
	FUNC3(&port->timer);

	/* Free existing transmit skbs */
	FUNC4(lport);

	FUNC1(interface);

	FUNC0(hba, lport);
}