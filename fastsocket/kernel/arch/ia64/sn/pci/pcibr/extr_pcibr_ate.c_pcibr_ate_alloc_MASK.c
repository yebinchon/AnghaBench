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
struct pcibus_info {int /*<<< orphan*/  pbi_lock; int /*<<< orphan*/  pbi_int_ate_resource; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct pcibus_info *pcibus_info, int count)
{
	int status;
	unsigned long flags;

	FUNC1(&pcibus_info->pbi_lock, flags);
	status = FUNC0(&pcibus_info->pbi_int_ate_resource, count);
	FUNC2(&pcibus_info->pbi_lock, flags);

	return status;
}