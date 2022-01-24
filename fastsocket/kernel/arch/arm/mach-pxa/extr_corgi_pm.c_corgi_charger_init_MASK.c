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

/* Variables and functions */
 int CORGI_GPIO_ADC_TEMP_ON ; 
 int CORGI_GPIO_CHRG_ON ; 
 int CORGI_GPIO_CHRG_UKN ; 
 int CORGI_GPIO_KEY_INT ; 
 int GPIO_IN ; 
 int GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(CORGI_GPIO_ADC_TEMP_ON | GPIO_OUT);
	FUNC0(CORGI_GPIO_CHRG_ON | GPIO_OUT);
	FUNC0(CORGI_GPIO_CHRG_UKN | GPIO_OUT);
	FUNC0(CORGI_GPIO_KEY_INT | GPIO_IN);
}