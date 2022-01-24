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
struct ipath_devdata {scalar_t__ ipath_intconfig; scalar_t__ ipath_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ipath_devdata *dd)
{
	FUNC0(dd->ipath_irq, dd);
	FUNC1(dd->ipath_irq);
	dd->ipath_irq = 0;
	dd->ipath_intconfig = 0;
}