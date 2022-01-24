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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfa_s*) ; 
 int /*<<< orphan*/  BFA_FCPORT_SM_DDPORTDISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct bfa_s *bfa)
{
	/*
	 * Assume caller check for port is in disable state
	 */
	FUNC1(FUNC0(bfa), BFA_FCPORT_SM_DDPORTDISABLE);
}