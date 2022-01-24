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
struct bfa_s {int dummy; } ;
struct bfa_fcport_s {void* beacon; void* link_e2e_beacon; } ;
typedef  void* bfa_boolean_t ;

/* Variables and functions */
 struct bfa_fcport_s* FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_s*,void*) ; 

void
FUNC2(void *dev, bfa_boolean_t beacon,
		  bfa_boolean_t link_e2e_beacon)
{
	struct bfa_s *bfa = dev;
	struct bfa_fcport_s *fcport = FUNC0(bfa);

	FUNC1(bfa, beacon);
	FUNC1(bfa, link_e2e_beacon);
	FUNC1(bfa, fcport->beacon);
	FUNC1(bfa, fcport->link_e2e_beacon);

	fcport->beacon = beacon;
	fcport->link_e2e_beacon = link_e2e_beacon;
}