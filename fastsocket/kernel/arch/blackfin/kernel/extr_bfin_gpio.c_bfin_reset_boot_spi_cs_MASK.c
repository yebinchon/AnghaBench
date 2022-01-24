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
struct TYPE_2__ {int /*<<< orphan*/  data_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_USAGE ; 
 unsigned short FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  data_set ; 
 TYPE_1__** gpio_array ; 
 size_t FUNC2 (unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(unsigned short pin)
{
	unsigned short gpio = FUNC1(pin);
	FUNC4(gpio, GPIO_USAGE);
	gpio_array[FUNC2(gpio)]->data_set = FUNC3(gpio);
	FUNC0(data_set);
	FUNC5(1);
}