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
struct cardstate {scalar_t__ mstate; scalar_t__ connected; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MS_INIT ; 
 scalar_t__ MS_LOCKED ; 
 scalar_t__ MS_UNINITIALIZED ; 
 int /*<<< orphan*/  M_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct cardstate *cs)
{
	if (cs->mstate != MS_LOCKED)
		return -EINVAL;

	cs->mstate = MS_UNINITIALIZED;
	cs->mode = M_UNKNOWN;
	FUNC0(cs);
	if (cs->connected)
		FUNC1(cs, MS_INIT);

	return 0;
}