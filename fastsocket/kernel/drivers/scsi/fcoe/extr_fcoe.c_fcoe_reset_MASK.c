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
struct fcoe_port {struct fcoe_interface* priv; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_ctlr_device {scalar_t__ enabled; } ;
struct fcoe_ctlr {int /*<<< orphan*/  lp; } ;
struct fc_lport {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 scalar_t__ FCOE_CTLR_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC2 (struct fcoe_ctlr*) ; 
 struct fcoe_ctlr_device* FUNC3 (struct fcoe_ctlr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fcoe_ctlr* FUNC5 (struct fcoe_interface*) ; 
 struct fcoe_port* FUNC6 (struct fc_lport*) ; 
 struct fc_lport* FUNC7 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC8(struct Scsi_Host *shost)
{
	struct fc_lport *lport = FUNC7(shost);
	struct fcoe_port *port = FUNC6(lport);
	struct fcoe_interface *fcoe = port->priv;
	struct fcoe_ctlr *ctlr = FUNC5(fcoe);
	struct fcoe_ctlr_device *cdev = FUNC3(ctlr);

	FUNC1(ctlr);
	FUNC0(ctlr->lp);

	if (cdev->enabled != FCOE_CTLR_DISABLED &&
	    !FUNC4(ctlr->lp))
		FUNC2(ctlr);
	return 0;
}