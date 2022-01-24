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
struct TYPE_4__ {int port_id; } ;
struct fc_rport_priv {TYPE_2__ ids; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* rport_logoff ) (struct fc_rport_priv*) ;} ;
struct fc_lport {int state; int /*<<< orphan*/  lp_mutex; struct fc_rport_priv* ms_rdata; struct fc_rport_priv* dns_rdata; TYPE_1__ tt; } ;
typedef  enum fc_rport_event { ____Placeholder_fc_rport_event } fc_rport_event ;

/* Variables and functions */
 int FC_FID_DIR_SERV ; 
 int FC_FID_MGMT_SERV ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int,int) ; 
 int /*<<< orphan*/  LPORT_ST_DHBA ; 
 int LPORT_ST_DNS ; 
 int LPORT_ST_FDMI ; 
 int /*<<< orphan*/  LPORT_ST_RNN_ID ; 
#define  RPORT_EV_FAILED 132 
#define  RPORT_EV_LOGO 131 
#define  RPORT_EV_NONE 130 
#define  RPORT_EV_READY 129 
#define  RPORT_EV_STOP 128 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_rport_priv*) ; 

__attribute__((used)) static void FUNC6(struct fc_lport *lport,
				    struct fc_rport_priv *rdata,
				    enum fc_rport_event event)
{
	FUNC0(lport, "Received a %d event for port (%6.6x)\n", event,
		     rdata->ids.port_id);

	FUNC3(&lport->lp_mutex);
	switch (event) {
	case RPORT_EV_READY:
		if (lport->state == LPORT_ST_DNS) {
			lport->dns_rdata = rdata;
			FUNC2(lport, LPORT_ST_RNN_ID);
		} else if (lport->state == LPORT_ST_FDMI) {
			lport->ms_rdata = rdata;
			FUNC1(lport, LPORT_ST_DHBA);
		} else {
			FUNC0(lport, "Received an READY event "
				     "on port (%6.6x) for the directory "
				     "server, but the lport is not "
				     "in the DNS or FDMI state, it's in the "
				     "%d state", rdata->ids.port_id,
				     lport->state);
			lport->tt.rport_logoff(rdata);
		}
		break;
	case RPORT_EV_LOGO:
	case RPORT_EV_FAILED:
	case RPORT_EV_STOP:
		if (rdata->ids.port_id == FC_FID_DIR_SERV)
			lport->dns_rdata = NULL;
		else if (rdata->ids.port_id == FC_FID_MGMT_SERV)
			lport->ms_rdata = NULL;
		break;
	case RPORT_EV_NONE:
		break;
	}
	FUNC4(&lport->lp_mutex);
}