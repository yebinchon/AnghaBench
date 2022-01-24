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
struct ia32_user_desc {int entry_number; int read_exec_only; int seg_not_present; int /*<<< orphan*/  useable; int /*<<< orphan*/  limit_in_pages; int /*<<< orphan*/  contents; int /*<<< orphan*/  seg_32bit; int /*<<< orphan*/  limit; int /*<<< orphan*/  base_addr; } ;
struct desc_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct desc_struct const*) ; 
 int /*<<< orphan*/  FUNC1 (struct desc_struct const*) ; 
 int /*<<< orphan*/  FUNC2 (struct desc_struct const*) ; 
 int /*<<< orphan*/  FUNC3 (struct desc_struct const*) ; 
 int /*<<< orphan*/  FUNC4 (struct desc_struct const*) ; 
 int /*<<< orphan*/  FUNC5 (struct desc_struct const*) ; 
 int /*<<< orphan*/  FUNC6 (struct desc_struct const*) ; 
 int /*<<< orphan*/  FUNC7 (struct desc_struct const*) ; 

__attribute__((used)) static void FUNC8(struct ia32_user_desc *info, int idx,
		const struct desc_struct *desc)
{
	info->entry_number = idx;
	info->base_addr = FUNC1(desc);
	info->limit = FUNC3(desc);
	info->seg_32bit = FUNC0(desc);
	info->contents = FUNC2(desc);
	info->read_exec_only = !FUNC7(desc);
	info->limit_in_pages = FUNC4(desc);
	info->seg_not_present = !FUNC5(desc);
	info->useable = FUNC6(desc);
}