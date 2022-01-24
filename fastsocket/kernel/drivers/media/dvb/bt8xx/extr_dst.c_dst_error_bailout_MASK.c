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
 int /*<<< orphan*/  DST_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_state*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC4(struct dst_state *state)
{
	FUNC0(verbose, DST_INFO, 1, "Trying to bailout from previous error.");
	FUNC3(state);
	FUNC1(state);
	FUNC2(10);

	return 0;
}