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
struct proc_dir_entry {int /*<<< orphan*/  name; struct i2o_controller* data; struct proc_dir_entry* next; struct proc_dir_entry* subdir; } ;
struct i2o_controller {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct proc_dir_entry*) ; 

__attribute__((used)) static void FUNC3(struct proc_dir_entry *dir,
				struct i2o_controller *c)
{
	struct proc_dir_entry *pe, *tmp;

	pe = dir->subdir;
	while (pe) {
		tmp = pe->next;
		if (pe->data == c) {
			FUNC0(pe);
			FUNC2(pe->name, dir);
		}
		FUNC1("removing IOP /proc/i2o/%s\n", c->name);
		pe = tmp;
	}
}