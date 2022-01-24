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
struct op_struct {int /*<<< orphan*/  com; struct op_struct* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct op_struct*,int /*<<< orphan*/ ,int) ; 
 struct op_struct* op_struct_list ; 
 int /*<<< orphan*/  op_struct_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct op_struct *FUNC4(void)
{
	struct op_struct *retval;
	unsigned long flags;

	FUNC2(&op_struct_list_lock, flags);
	retval = op_struct_list;
	if (retval)
		op_struct_list = retval->next;
	FUNC3(&op_struct_list_lock, flags);
	if (retval) {
		FUNC1(retval, 0, sizeof(*retval));
		FUNC0(&retval->com);
	}

	return retval;
}