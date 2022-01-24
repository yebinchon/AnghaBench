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
struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*) ; 

__attribute__((used)) static void FUNC2(struct qib_devdata *dd)
{
	if (dd->cspec->irq) {
		FUNC0(dd->cspec->irq, dd);
		dd->cspec->irq = 0;
	}
	FUNC1(dd);
}