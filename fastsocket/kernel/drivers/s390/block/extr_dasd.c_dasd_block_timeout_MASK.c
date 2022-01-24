#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dasd_block {TYPE_1__* base; } ;
struct TYPE_2__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STOPPED_PENDING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long ptr)
{
	unsigned long flags;
	struct dasd_block *block;

	block = (struct dasd_block *) ptr;
	FUNC3(FUNC2(block->base->cdev), flags);
	/* re-activate request queue */
	FUNC0(block->base, DASD_STOPPED_PENDING);
	FUNC4(FUNC2(block->base->cdev), flags);
	FUNC1(block);
}