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
struct pmcraid_instance {int /*<<< orphan*/ * cmd_cachep; int /*<<< orphan*/ ** cmd_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct pmcraid_instance *pinstance, int max_index)
{
	int i;
	for (i = 0; i < max_index; i++) {
		FUNC1(pinstance->cmd_cachep, pinstance->cmd_list[i]);
		pinstance->cmd_list[i] = NULL;
	}
	FUNC0(pinstance->cmd_cachep);
	pinstance->cmd_cachep = NULL;
}