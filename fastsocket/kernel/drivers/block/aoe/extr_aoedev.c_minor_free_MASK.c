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
typedef  int /*<<< orphan*/  ulong ;

/* Variables and functions */
 int /*<<< orphan*/  AOE_PARTITIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  N_DEVS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  used_minors ; 
 int /*<<< orphan*/  used_minors_lock ; 

__attribute__((used)) static void
FUNC5(ulong minor)
{
	ulong flags;

	minor /= AOE_PARTITIONS;
	FUNC0(minor >= N_DEVS);

	FUNC2(&used_minors_lock, flags);
	FUNC0(!FUNC4(minor, used_minors));
	FUNC1(minor, used_minors);
	FUNC3(&used_minors_lock, flags);
}