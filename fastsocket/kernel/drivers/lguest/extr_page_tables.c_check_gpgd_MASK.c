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
struct lg_cpu {TYPE_1__* lg; } ;
typedef  int /*<<< orphan*/  pgd_t ;
struct TYPE_2__ {scalar_t__ pfn_limit; } ;

/* Variables and functions */
 int CHECK_GPGD_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct lg_cpu*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct lg_cpu *cpu, pgd_t gpgd)
{
	if ((FUNC1(gpgd) & ~CHECK_GPGD_MASK) ||
	   (FUNC2(gpgd) >= cpu->lg->pfn_limit))
		FUNC0(cpu, "bad page directory entry");
}