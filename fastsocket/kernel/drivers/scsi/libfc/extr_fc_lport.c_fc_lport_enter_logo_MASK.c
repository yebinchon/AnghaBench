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
struct TYPE_2__ {int /*<<< orphan*/  (* elsct_send ) (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_lport*,int) ;} ;
struct fc_lport {int r_a_tov; TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_logo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_LOGO ; 
 int /*<<< orphan*/  FC_FID_FLOGI ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPORT_ST_LOGO ; 
 struct fc_frame* FUNC1 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  fc_lport_logo_resp ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_lport*,int) ; 

__attribute__((used)) static void FUNC7(struct fc_lport *lport)
{
	struct fc_frame *fp;
	struct fc_els_logo *logo;

	FUNC0(lport, "Entered LOGO state from %s state\n",
		     FUNC3(lport));

	FUNC4(lport, LPORT_ST_LOGO);
	FUNC5(lport);

	fp = FUNC1(lport, sizeof(*logo));
	if (!fp) {
		FUNC2(lport, fp);
		return;
	}

	if (!lport->tt.elsct_send(lport, FC_FID_FLOGI, fp, ELS_LOGO,
				  fc_lport_logo_resp, lport,
				  2 * lport->r_a_tov))
		FUNC2(lport, NULL);
}