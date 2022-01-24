#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wm97xx_pdata {struct wm97xx_batt_pdata* batt_pdata; } ;
struct wm97xx_batt_pdata {unsigned long temp_mult; unsigned long temp_div; int /*<<< orphan*/  temp_aux; } ;
struct power_supply {TYPE_1__* dev; } ;
struct TYPE_4__ {struct wm97xx_pdata* platform_data; } ;
struct TYPE_3__ {TYPE_2__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct power_supply *bat_ps)
{
	struct wm97xx_pdata *wmdata = bat_ps->dev->parent->platform_data;
	struct wm97xx_batt_pdata *pdata = wmdata->batt_pdata;

	return FUNC1(FUNC0(bat_ps->dev->parent),
					pdata->temp_aux) * pdata->temp_mult /
					pdata->temp_div;
}