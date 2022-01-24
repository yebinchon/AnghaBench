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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct fc_seq {int dummy; } ;
struct fc_rport_priv {scalar_t__ rp_state; int r_a_tov; int e_d_tov; TYPE_2__* local_port; int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_rtv_acc {int /*<<< orphan*/  rtv_e_d_tov; int /*<<< orphan*/  rtv_r_a_tov; int /*<<< orphan*/  rtv_toq; } ;
struct TYPE_3__ {int /*<<< orphan*/  rport_destroy; } ;
struct TYPE_4__ {TYPE_1__ tt; } ;

/* Variables and functions */
 scalar_t__ ELS_LS_ACC ; 
 int FC_ELS_RTV_EDRES ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 scalar_t__ RPORT_ST_RTV ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 struct fc_els_rtv_acc* FUNC4 (struct fc_frame*,int) ; 
 scalar_t__ FUNC5 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_rport_priv*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct fc_seq *sp, struct fc_frame *fp,
			      void *rdata_arg)
{
	struct fc_rport_priv *rdata = rdata_arg;
	u8 op;

	FUNC10(&rdata->rp_mutex);

	FUNC0(rdata, "Received a RTV %s\n", FUNC2(fp));

	if (rdata->rp_state != RPORT_ST_RTV) {
		FUNC0(rdata, "Received a RTV response, but in state "
			     "%s\n", FUNC8(rdata));
		if (FUNC1(fp))
			goto err;
		goto out;
	}

	if (FUNC1(fp)) {
		FUNC7(rdata, fp);
		goto err;
	}

	op = FUNC5(fp);
	if (op == ELS_LS_ACC) {
		struct fc_els_rtv_acc *rtv;
		u32 toq;
		u32 tov;

		rtv = FUNC4(fp, sizeof(*rtv));
		if (rtv) {
			toq = FUNC12(rtv->rtv_toq);
			tov = FUNC12(rtv->rtv_r_a_tov);
			if (tov == 0)
				tov = 1;
			rdata->r_a_tov = tov;
			tov = FUNC12(rtv->rtv_e_d_tov);
			if (toq & FC_ELS_RTV_EDRES)
				tov /= 1000000;
			if (tov == 0)
				tov = 1;
			rdata->e_d_tov = tov;
		}
	}

	FUNC6(rdata);

out:
	FUNC3(fp);
err:
	FUNC11(&rdata->rp_mutex);
	FUNC9(&rdata->kref, rdata->local_port->tt.rport_destroy);
}