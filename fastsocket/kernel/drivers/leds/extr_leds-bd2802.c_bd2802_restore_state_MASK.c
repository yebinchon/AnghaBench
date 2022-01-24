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
struct bd2802_led {TYPE_1__* led; } ;
struct TYPE_2__ {scalar_t__ b; scalar_t__ g; scalar_t__ r; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLUE ; 
 int /*<<< orphan*/  GREEN ; 
 int LED_NUM ; 
 int /*<<< orphan*/  RED ; 
 int /*<<< orphan*/  FUNC0 (struct bd2802_led*,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct bd2802_led *led)
{
	int i;

	for (i = 0; i < LED_NUM; i++) {
		if (led->led[i].r)
			FUNC0(led, i, RED, led->led[i].r);
		if (led->led[i].g)
			FUNC0(led, i, GREEN, led->led[i].g);
		if (led->led[i].b)
			FUNC0(led, i, BLUE, led->led[i].b);
	}
}