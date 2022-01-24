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
typedef  int /*<<< orphan*/  nasid_t ;
typedef  void* hubreg_t ;
struct TYPE_2__ {scalar_t__ iwcr_dir_con; void* wcr_reg_value; } ;
typedef  TYPE_1__ hubii_wcr_t ;

/* Variables and functions */
 unsigned int HUB_WIDGET_ID_MAX ; 
 unsigned int HUB_WIDGET_ID_MIN ; 
 int /*<<< orphan*/  IIO_OUTWIDGET_ACCESS ; 
 int /*<<< orphan*/  IIO_WCR ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static void FUNC3(nasid_t nasid)
{
	hubreg_t ii_iowa;
	hubii_wcr_t ii_wcr;
	unsigned i;

	ii_iowa = FUNC0(nasid, IIO_OUTWIDGET_ACCESS);
	FUNC1(nasid, IIO_OUTWIDGET_ACCESS, 0);

	ii_wcr.wcr_reg_value = FUNC0(nasid, IIO_WCR);

	if (ii_wcr.iwcr_dir_con) {
		/*
		 * Assume a bridge here.
		 */
		FUNC2(nasid, 0, 3);
	} else {
		/*
		 * Assume a crossbow here.
		 */
		FUNC2(nasid, 0, 1);
	}

	/*
	 * XXX - Here's where we should take the widget type into
	 * when account assigning credits.
	 */
	for (i = HUB_WIDGET_ID_MIN; i <= HUB_WIDGET_ID_MAX; i++)
		FUNC2(nasid, i, 3);

	FUNC1(nasid, IIO_OUTWIDGET_ACCESS, ii_iowa);
}