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
 int /*<<< orphan*/  BRIQ_PANEL_LED_IOPORT ; 
 int led ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(char state)
{
	if (state == 'R')
		led = 0x01;
	else if (state == 'G')
		led = 0x02;
	else if (state == 'Y')
		led = 0x03;
	else if (state == 'X')
		led = 0x00;
	FUNC0(led, BRIQ_PANEL_LED_IOPORT);
}