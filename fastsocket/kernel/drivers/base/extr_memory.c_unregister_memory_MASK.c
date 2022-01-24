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
struct TYPE_2__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/ * cls; } ;
struct memory_block {TYPE_1__ sysdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memory_sysdev_class ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(struct memory_block *memory)
{
	FUNC0(memory->sysdev.cls != &memory_sysdev_class);

	/* drop the ref. we got in remove_memory_block() */
	FUNC1(&memory->sysdev.kobj);
	FUNC2(&memory->sysdev);
}