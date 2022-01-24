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
typedef  scalar_t__ u32 ;
struct mem_ctl_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mem_ctl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mem_ctl_info *mci)
{
	u32 errsta;

	errsta = FUNC0(mci);
	if (errsta)
		FUNC1(mci, errsta);
}