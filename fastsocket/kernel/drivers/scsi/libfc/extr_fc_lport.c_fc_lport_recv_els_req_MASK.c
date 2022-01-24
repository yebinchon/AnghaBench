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
struct TYPE_2__ {void (* rport_recv_req ) (struct fc_lport*,struct fc_frame*) ;void (* disc_recv_req ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {int /*<<< orphan*/  lp_mutex; TYPE_1__ tt; int /*<<< orphan*/  point_to_multipoint; int /*<<< orphan*/  link_up; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
#define  ELS_ECHO 133 
#define  ELS_FLOGI 132 
#define  ELS_LOGO 131 
#define  ELS_RLIR 130 
#define  ELS_RNID 129 
#define  ELS_RSCN 128 
 int /*<<< orphan*/  FC_FID_FLOGI ; 
 int /*<<< orphan*/  FUNC0 (struct fc_frame*) ; 
 int FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 void FUNC3 (struct fc_lport*,struct fc_frame*) ; 
 void FUNC4 (struct fc_lport*,struct fc_frame*) ; 
 void FUNC5 (struct fc_lport*,struct fc_frame*) ; 
 void FUNC6 (struct fc_lport*,struct fc_frame*) ; 
 void FUNC7 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct fc_lport *lport,
				  struct fc_frame *fp)
{
	void (*recv)(struct fc_lport *, struct fc_frame *);

	FUNC8(&lport->lp_mutex);

	/*
	 * Handle special ELS cases like FLOGI, LOGO, and
	 * RSCN here.  These don't require a session.
	 * Even if we had a session, it might not be ready.
	 */
	if (!lport->link_up)
		FUNC0(fp);
	else {
		/*
		 * Check opcode.
		 */
		recv = lport->tt.rport_recv_req;
		switch (FUNC1(fp)) {
		case ELS_FLOGI:
			if (!lport->point_to_multipoint)
				recv = fc_lport_recv_flogi_req;
			break;
		case ELS_LOGO:
			if (FUNC2(fp) == FC_FID_FLOGI)
				recv = fc_lport_recv_logo_req;
			break;
		case ELS_RSCN:
			recv = lport->tt.disc_recv_req;
			break;
		case ELS_ECHO:
			recv = fc_lport_recv_echo_req;
			break;
		case ELS_RLIR:
			recv = fc_lport_recv_rlir_req;
			break;
		case ELS_RNID:
			recv = fc_lport_recv_rnid_req;
			break;
		}

		recv(lport, fp);
	}
	FUNC9(&lport->lp_mutex);
}