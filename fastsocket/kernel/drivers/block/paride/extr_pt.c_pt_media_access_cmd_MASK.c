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
struct pt_unit {int /*<<< orphan*/  pi; } ;

/* Variables and functions */
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pt_unit*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_unit*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_unit*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pt_unit *tape, int tmo, char *cmd, char *fun)
{
	if (FUNC1(tape, cmd, 0, fun)) {
		FUNC3(tape, 0);
		return;
	}
	FUNC0(tape->pi);
	FUNC2(tape, HZ, tmo, fun);
}