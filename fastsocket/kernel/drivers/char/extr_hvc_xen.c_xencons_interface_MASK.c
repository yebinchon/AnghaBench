#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xencons_interface {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mfn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 struct xencons_interface* FUNC0 (unsigned long) ; 
 unsigned long console_pfn ; 
 struct xencons_interface* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* xen_start_info ; 

__attribute__((used)) static inline struct xencons_interface *FUNC2(void)
{
	if (console_pfn == ~0ul)
		return FUNC1(xen_start_info->console.domU.mfn);
	else
		return FUNC0(console_pfn << PAGE_SHIFT);
}