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
typedef  int /*<<< orphan*/  u32 ;
struct fc_rport_priv {int /*<<< orphan*/  rp_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  disc_mutex; } ;
struct TYPE_4__ {struct fc_rport_priv* (* rport_lookup ) (struct fc_lport*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* seq_els_rsp_send ) (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct fc_lport {TYPE_1__ disc; TYPE_2__ tt; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_LS_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RPORT_EV_LOGO ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fc_rport_priv* FUNC9 (struct fc_lport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct fc_lport *lport, struct fc_frame *fp)
{
	struct fc_rport_priv *rdata;
	u32 sid;

	lport->tt.seq_els_rsp_send(fp, ELS_LS_ACC, NULL);

	sid = FUNC3(fp);

	FUNC6(&lport->disc.disc_mutex);
	rdata = lport->tt.rport_lookup(lport, sid);
	if (rdata) {
		FUNC6(&rdata->rp_mutex);
		FUNC0(rdata, "Received LOGO request while in state %s\n",
			     FUNC5(rdata));

		FUNC4(rdata, RPORT_EV_LOGO);
		FUNC7(&rdata->rp_mutex);
	} else
		FUNC1(lport, sid,
				"Received LOGO from non-logged-in port\n");
	FUNC7(&lport->disc.disc_mutex);
	FUNC2(fp);
}