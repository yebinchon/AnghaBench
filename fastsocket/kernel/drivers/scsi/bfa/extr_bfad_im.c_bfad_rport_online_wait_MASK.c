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
struct bfad_s {int bfad_flags; } ;

/* Variables and functions */
 int BFAD_PORT_ONLINE ; 
 int BFAD_RPORT_ONLINE ; 
 int HZ ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int bfa_linkup_delay ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct bfad_s *bfad)
{
	int i;
	int rport_delay = 10;

	for (i = 0; !(bfad->bfad_flags & BFAD_PORT_ONLINE)
		&& i < bfa_linkup_delay; i++) {
		FUNC1(TASK_UNINTERRUPTIBLE);
		FUNC0(HZ);
	}

	if (bfad->bfad_flags & BFAD_PORT_ONLINE) {
		rport_delay = rport_delay < bfa_linkup_delay ?
			rport_delay : bfa_linkup_delay;
		for (i = 0; !(bfad->bfad_flags & BFAD_RPORT_ONLINE)
			&& i < rport_delay; i++) {
			FUNC1(TASK_UNINTERRUPTIBLE);
			FUNC0(HZ);
		}

		if (rport_delay > 0 && (bfad->bfad_flags & BFAD_RPORT_ONLINE)) {
			FUNC1(TASK_UNINTERRUPTIBLE);
			FUNC0(rport_delay * HZ);
		}
	}
}