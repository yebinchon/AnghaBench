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
typedef  int /*<<< orphan*/  work_func_t ;
struct qlcnic_back_channel {int /*<<< orphan*/  bc_async_wq; } ;
struct qlcnic_async_work_list {int /*<<< orphan*/  work; void* ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qlcnic_async_work_list* FUNC1 (struct qlcnic_back_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct qlcnic_back_channel *bc,
						work_func_t func, void *data)
{
	struct qlcnic_async_work_list *entry = NULL;

	entry = FUNC1(bc);
	if (!entry)
		return;

	entry->ptr = data;
	FUNC0(&entry->work, func);
	FUNC2(bc->bc_async_wq, &entry->work);
}