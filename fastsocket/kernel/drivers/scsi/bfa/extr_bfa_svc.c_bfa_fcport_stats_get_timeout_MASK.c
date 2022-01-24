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
struct bfa_fcport_s {int /*<<< orphan*/  stats_status; scalar_t__ stats_qfull; int /*<<< orphan*/  stats_reqq_wait; int /*<<< orphan*/  bfa; } ;

/* Variables and functions */
 scalar_t__ BFA_FALSE ; 
 int /*<<< orphan*/  BFA_STATUS_ETIMER ; 
 int /*<<< orphan*/  BFA_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_fcport_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(void *cbarg)
{
	struct bfa_fcport_s *fcport = (struct bfa_fcport_s *) cbarg;

	FUNC2(fcport->bfa, fcport->stats_qfull);

	if (fcport->stats_qfull) {
		FUNC1(&fcport->stats_reqq_wait);
		fcport->stats_qfull = BFA_FALSE;
	}

	fcport->stats_status = BFA_STATUS_ETIMER;
	FUNC0(fcport, BFA_TRUE);
}