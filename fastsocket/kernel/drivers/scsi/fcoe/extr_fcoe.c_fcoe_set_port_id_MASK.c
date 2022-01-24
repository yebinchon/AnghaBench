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
typedef  int /*<<< orphan*/  u32 ;
struct fcoe_port {struct fcoe_interface* priv; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_ctlr {int dummy; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 scalar_t__ ELS_FLOGI ; 
 scalar_t__ FUNC0 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct fcoe_ctlr*,struct fc_lport*,struct fc_frame*) ; 
 struct fcoe_ctlr* FUNC2 (struct fcoe_interface*) ; 
 struct fcoe_port* FUNC3 (struct fc_lport*) ; 

__attribute__((used)) static void FUNC4(struct fc_lport *lport,
			     u32 port_id, struct fc_frame *fp)
{
	struct fcoe_port *port = FUNC3(lport);
	struct fcoe_interface *fcoe = port->priv;
	struct fcoe_ctlr *ctlr = FUNC2(fcoe);

	if (fp && FUNC0(fp) == ELS_FLOGI)
		FUNC1(ctlr, lport, fp);
}