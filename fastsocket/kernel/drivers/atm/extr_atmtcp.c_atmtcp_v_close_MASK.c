#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; } ;
struct TYPE_4__ {TYPE_1__ sap_addr; int /*<<< orphan*/  sap_family; } ;
struct atmtcp_control {TYPE_2__ addr; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  AF_ATMPVC ; 
 int /*<<< orphan*/  ATMTCP_CTRL_CLOSE ; 
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  FUNC0 (struct atm_vcc*,int /*<<< orphan*/ ,struct atmtcp_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct atmtcp_control*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct atm_vcc *vcc)
{
	struct atmtcp_control msg;

	FUNC2(&msg,0,sizeof(msg));
	msg.addr.sap_family = AF_ATMPVC;
	msg.addr.sap_addr.vpi = vcc->vpi;
	msg.addr.sap_addr.vci = vcc->vci;
	FUNC1(ATM_VF_READY,&vcc->flags);
	(void) FUNC0(vcc,ATMTCP_CTRL_CLOSE,&msg,ATM_VF_ADDR);
}