#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fc_seq {int dummy; } ;
struct TYPE_5__ {scalar_t__ port_name; } ;
struct fc_rport_priv {scalar_t__ rp_state; unsigned int r_a_tov; struct fc_lport* local_port; int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; TYPE_2__ ids; } ;
struct TYPE_6__ {int /*<<< orphan*/  rport_destroy; } ;
struct fc_lport {scalar_t__ wwpn; TYPE_3__ tt; } ;
struct fc_frame {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sp_r_a_tov; } ;
struct fc_els_flogi {TYPE_1__ fl_csp; } ;

/* Variables and functions */
 scalar_t__ ELS_LS_ACC ; 
 struct fc_frame* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*,char*,...) ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
 scalar_t__ RPORT_ST_FLOGI ; 
 int /*<<< orphan*/  RPORT_ST_PLOGI_WAIT ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 struct fc_els_flogi* FUNC5 (struct fc_frame*,int) ; 
 scalar_t__ FUNC6 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_rport_priv*,struct fc_frame*) ; 
 scalar_t__ FUNC10 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct fc_seq *sp, struct fc_frame *fp,
				void *rp_arg)
{
	struct fc_rport_priv *rdata = rp_arg;
	struct fc_lport *lport = rdata->local_port;
	struct fc_els_flogi *flogi;
	unsigned int r_a_tov;

	FUNC1(rdata, "Received a FLOGI %s\n", FUNC3(fp));

	if (fp == FUNC0(-FC_EX_CLOSED))
		goto put;

	FUNC14(&rdata->rp_mutex);

	if (rdata->rp_state != RPORT_ST_FLOGI) {
		FUNC1(rdata, "Received a FLOGI response, but in state "
			     "%s\n", FUNC11(rdata));
		if (FUNC2(fp))
			goto err;
		goto out;
	}

	if (FUNC2(fp)) {
		FUNC8(rdata, fp);
		goto err;
	}

	if (FUNC6(fp) != ELS_LS_ACC)
		goto bad;
	if (FUNC10(rdata, fp))
		goto bad;

	flogi = FUNC5(fp, sizeof(*flogi));
	if (!flogi)
		goto bad;
	r_a_tov = FUNC16(flogi->fl_csp.sp_r_a_tov);
	if (r_a_tov > rdata->r_a_tov)
		rdata->r_a_tov = r_a_tov;

	if (rdata->ids.port_name < lport->wwpn)
		FUNC7(rdata);
	else
		FUNC12(rdata, RPORT_ST_PLOGI_WAIT);
out:
	FUNC4(fp);
err:
	FUNC15(&rdata->rp_mutex);
put:
	FUNC13(&rdata->kref, rdata->local_port->tt.rport_destroy);
	return;
bad:
	FUNC1(rdata, "Bad FLOGI response\n");
	FUNC9(rdata, fp);
	goto out;
}