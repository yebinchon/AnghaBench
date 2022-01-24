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
struct TYPE_6__ {TYPE_2__* dev; } ;
struct tosa_bat {scalar_t__ gpio_bat; scalar_t__ adc_bat; unsigned long adc_bat_divider; TYPE_3__ psy; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  bat_lock ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC5(struct tosa_bat *bat)
{
	unsigned long value = 0;

	if (bat->gpio_bat < 0 || bat->adc_bat < 0)
		return 0;

	FUNC2(&bat_lock);
	FUNC0(bat->gpio_bat, 1);
	FUNC1(5);
	value = FUNC4(bat->psy.dev->parent->driver_data,
			bat->adc_bat);
	FUNC0(bat->gpio_bat, 0);
	FUNC3(&bat_lock);

	value = value * 1000000 / bat->adc_bat_divider;

	return value;
}