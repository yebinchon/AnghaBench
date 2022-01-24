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
struct bfad_s {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  onlines; } ;
struct bfa_fcs_rport_s {int /*<<< orphan*/  pid; int /*<<< orphan*/  pwwn; int /*<<< orphan*/  itnim; int /*<<< orphan*/  fcs; TYPE_2__ stats; struct bfa_fcs_lport_s* port; } ;
struct bfa_fcs_lport_s {TYPE_1__* fcs; } ;
struct TYPE_3__ {scalar_t__ bfad; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bfad_s*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  BFA_RPORT_AEN_ONLINE ; 
 int BFA_STRING_32 ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_fcs_lport_s*) ; 
 scalar_t__ FUNC4 (struct bfa_fcs_lport_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcs_rport_s*) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcs_rport_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_log_level ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct bfa_fcs_rport_s *rport)
{
	struct bfa_fcs_lport_s *port = rport->port;
	struct bfad_s *bfad = (struct bfad_s *)port->fcs->bfad;
	char	lpwwn_buf[BFA_STRING_32];
	char	rpwwn_buf[BFA_STRING_32];

	rport->stats.onlines++;

	if ((!rport->pid) || (!rport->pwwn)) {
		FUNC8(rport->fcs, rport->pid);
		FUNC7(rport->fcs, rport->pid);
	}

	if (FUNC4(port)) {
		FUNC2(rport->itnim);
		if (!FUNC0(rport->pid))
			FUNC5(rport);
	};

	FUNC9(lpwwn_buf, FUNC3(port));
	FUNC9(rpwwn_buf, rport->pwwn);
	if (!FUNC0(rport->pid)) {
		FUNC1(KERN_INFO, bfad, bfa_log_level,
		"Remote port (WWN = %s) online for logical port (WWN = %s)\n",
		rpwwn_buf, lpwwn_buf);
		FUNC6(rport, BFA_RPORT_AEN_ONLINE, NULL);
	}
}