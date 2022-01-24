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
struct fc_lport {scalar_t__ state; scalar_t__ link_up; int /*<<< orphan*/  host; scalar_t__ vport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCH_EVT_LIPRESET ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_VPORT_INITIALIZING ; 
 int /*<<< orphan*/  FC_VPORT_LINKDOWN ; 
 scalar_t__ LPORT_ST_DISABLED ; 
 scalar_t__ LPORT_ST_LOGO ; 
 int /*<<< orphan*/  LPORT_ST_RESET ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*) ; 

__attribute__((used)) static void FUNC9(struct fc_lport *lport)
{
	FUNC0(lport, "Entered RESET state from %s state\n",
		     FUNC5(lport));

	if (lport->state == LPORT_ST_DISABLED || lport->state == LPORT_ST_LOGO)
		return;

	if (lport->vport) {
		if (lport->link_up)
			FUNC7(lport->vport, FC_VPORT_INITIALIZING);
		else
			FUNC7(lport->vport, FC_VPORT_LINKDOWN);
	}
	FUNC6(lport, LPORT_ST_RESET);
	FUNC2(lport->host, FUNC1(),
			   FCH_EVT_LIPRESET, 0);
	FUNC8(lport);
	FUNC4(lport);
	if (lport->link_up)
		FUNC3(lport);
}