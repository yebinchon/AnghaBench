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
struct dst_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC4(struct dst_state *state)
{
	FUNC0(verbose, DST_NOTICE, 1, "Trying to return from previous errors.");
	FUNC1(state);
	FUNC3(10);
	FUNC2(state);
	FUNC3(10);

	return 0;
}