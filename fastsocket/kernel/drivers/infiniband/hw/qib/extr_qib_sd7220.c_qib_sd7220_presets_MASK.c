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
struct TYPE_2__ {scalar_t__ presets_needed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int) ; 
 int FUNC1 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct qib_devdata *dd)
{
	int ret = 0;

	if (!dd->cspec->presets_needed)
		return ret;
	dd->cspec->presets_needed = 0;
	/* Assert uC reset, so we don't clash with it. */
	FUNC0(dd, 1);
	FUNC3(2);
	FUNC2(dd, "link-down");

	ret = FUNC1(dd);
	return ret;
}