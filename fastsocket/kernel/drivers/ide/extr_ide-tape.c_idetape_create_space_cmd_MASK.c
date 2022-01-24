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
typedef  scalar_t__ u8 ;
struct ide_atapi_pc {int /*<<< orphan*/  flags; scalar_t__* c; } ;

/* Variables and functions */
 int /*<<< orphan*/  PC_FLAG_WAIT_FOR_DSC ; 
 scalar_t__ SPACE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ide_atapi_pc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static void FUNC3(struct ide_atapi_pc *pc, int count, u8 cmd)
{
	FUNC1(pc);
	pc->c[0] = SPACE;
	FUNC2(FUNC0(count), (unsigned int *) &pc->c[1]);
	pc->c[1] = cmd;
	pc->flags |= PC_FLAG_WAIT_FOR_DSC;
}