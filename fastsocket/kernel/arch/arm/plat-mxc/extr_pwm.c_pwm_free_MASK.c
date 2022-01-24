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
struct pwm_device {int /*<<< orphan*/ * label; scalar_t__ use_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  pwm_lock ; 

void FUNC3(struct pwm_device *pwm)
{
	FUNC0(&pwm_lock);

	if (pwm->use_count) {
		pwm->use_count--;
		pwm->label = NULL;
	} else
		FUNC2("PWM device already freed\n");

	FUNC1(&pwm_lock);
}