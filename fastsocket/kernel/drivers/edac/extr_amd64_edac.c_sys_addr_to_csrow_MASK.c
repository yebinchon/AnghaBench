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
typedef  scalar_t__ u64 ;
struct mem_ctl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,char*,unsigned long) ; 
 int FUNC1 (struct mem_ctl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_ctl_info*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mem_ctl_info *mci, u64 sys_addr)
{
	int csrow;

	csrow = FUNC1(mci, FUNC2(mci, sys_addr));

	if (csrow == -1)
		FUNC0(mci, "Failed to translate InputAddr to csrow for "
				  "address 0x%lx\n", (unsigned long)sys_addr);
	return csrow;
}