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
typedef  int /*<<< orphan*/  u32 ;
struct cr_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cr_to_virt ) (struct cr_regs*) ;} ;

/* Variables and functions */
 TYPE_1__* arch_iommu ; 
 int /*<<< orphan*/  FUNC0 (struct cr_regs*) ; 

u32 FUNC1(struct cr_regs *cr)
{
	return arch_iommu->cr_to_virt(cr);
}