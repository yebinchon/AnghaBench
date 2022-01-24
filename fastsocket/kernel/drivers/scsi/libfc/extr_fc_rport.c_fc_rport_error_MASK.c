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
struct fc_rport_priv {int rp_state; int /*<<< orphan*/  flags; int /*<<< orphan*/  retries; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_RP_STARTED ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  RPORT_EV_FAILED ; 
#define  RPORT_ST_ADISC 136 
#define  RPORT_ST_DELETE 135 
#define  RPORT_ST_FLOGI 134 
#define  RPORT_ST_INIT 133 
#define  RPORT_ST_PLOGI 132 
#define  RPORT_ST_PLOGI_WAIT 131 
#define  RPORT_ST_PRLI 130 
#define  RPORT_ST_READY 129 
#define  RPORT_ST_RTV 128 
 int /*<<< orphan*/  FUNC3 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_rport_priv*) ; 

__attribute__((used)) static void FUNC7(struct fc_rport_priv *rdata, struct fc_frame *fp)
{
	FUNC0(rdata, "Error %ld in state %s, retries %d\n",
		     FUNC1(fp) ? -FUNC2(fp) : 0,
		     FUNC6(rdata), rdata->retries);

	switch (rdata->rp_state) {
	case RPORT_ST_FLOGI:
	case RPORT_ST_PLOGI:
		rdata->flags &= ~FC_RP_STARTED;
		FUNC3(rdata, RPORT_EV_FAILED);
		break;
	case RPORT_ST_RTV:
		FUNC5(rdata);
		break;
	case RPORT_ST_PRLI:
	case RPORT_ST_ADISC:
		FUNC4(rdata);
		break;
	case RPORT_ST_PLOGI_WAIT:
	case RPORT_ST_DELETE:
	case RPORT_ST_READY:
	case RPORT_ST_INIT:
		break;
	}
}