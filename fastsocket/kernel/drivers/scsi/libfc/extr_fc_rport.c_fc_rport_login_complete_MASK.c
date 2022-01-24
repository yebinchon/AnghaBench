#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct fc_rport_priv {unsigned int e_d_tov; int /*<<< orphan*/  maxframe_size; struct fc_lport* local_port; } ;
struct fc_lport {int /*<<< orphan*/  mfs; } ;
struct fc_frame {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sp_e_d_tov; int /*<<< orphan*/  sp_features; } ;
struct fc_els_flogi {TYPE_1__ fl_csp; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ELS_FLOGI ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*) ; 
 int FC_SP_FT_EDTR ; 
 int FC_SP_FT_FPORT ; 
 struct fc_els_flogi* FUNC1 (struct fc_frame*,int) ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_els_flogi*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fc_rport_priv *rdata,
				   struct fc_frame *fp)
{
	struct fc_lport *lport = rdata->local_port;
	struct fc_els_flogi *flogi;
	unsigned int e_d_tov;
	u16 csp_flags;

	flogi = FUNC1(fp, sizeof(*flogi));
	if (!flogi)
		return -EINVAL;

	csp_flags = FUNC5(flogi->fl_csp.sp_features);

	if (FUNC2(fp) == ELS_FLOGI) {
		if (csp_flags & FC_SP_FT_FPORT) {
			FUNC0(rdata, "Fabric bit set in FLOGI\n");
			return -EINVAL;
		}
	} else {

		/*
		 * E_D_TOV is not valid on an incoming FLOGI request.
		 */
		e_d_tov = FUNC4(flogi->fl_csp.sp_e_d_tov);
		if (csp_flags & FC_SP_FT_EDTR)
			e_d_tov /= 1000000;
		if (e_d_tov > rdata->e_d_tov)
			rdata->e_d_tov = e_d_tov;
	}
	rdata->maxframe_size = FUNC3(flogi, lport->mfs);
	return 0;
}