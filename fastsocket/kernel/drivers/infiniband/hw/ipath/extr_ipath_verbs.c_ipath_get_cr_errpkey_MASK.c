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
struct ipath_devdata {TYPE_1__* ipath_cregs; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_errpkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipath_devdata*,int /*<<< orphan*/ ) ; 

u32 FUNC1(struct ipath_devdata *dd)
{
	return FUNC0(dd, dd->ipath_cregs->cr_errpkey);
}