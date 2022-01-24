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
struct TYPE_3__ {int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {int /*<<< orphan*/  kref; TYPE_1__ ids; struct fc_lport* local_port; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* elsct_send ) (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_rport_priv*,int) ;} ;
struct fc_lport {int r_a_tov; TYPE_2__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_rtv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_RTV ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPORT_ST_RTV ; 
 struct fc_frame* FUNC1 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  fc_rport_rtv_resp ; 
 int /*<<< orphan*/  FUNC3 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_rport_priv*,int) ; 

__attribute__((used)) static void FUNC7(struct fc_rport_priv *rdata)
{
	struct fc_frame *fp;
	struct fc_lport *lport = rdata->local_port;

	FUNC0(rdata, "Port entered RTV state from %s state\n",
		     FUNC3(rdata));

	FUNC4(rdata, RPORT_ST_RTV);

	fp = FUNC1(lport, sizeof(struct fc_els_rtv));
	if (!fp) {
		FUNC2(rdata, fp);
		return;
	}

	if (!lport->tt.elsct_send(lport, rdata->ids.port_id, fp, ELS_RTV,
				  fc_rport_rtv_resp, rdata,
				  2 * lport->r_a_tov))
		FUNC2(rdata, NULL);
	else
		FUNC5(&rdata->kref);
}