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
struct pwm_device {int running; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2410_TCON ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (struct pwm_device*) ; 

int FUNC5(struct pwm_device *pwm)
{
	unsigned long flags;
	unsigned long tcon;

	FUNC3(flags);

	tcon = FUNC0(S3C2410_TCON);
	tcon |= FUNC4(pwm);
	FUNC1(tcon, S3C2410_TCON);

	FUNC2(flags);

	pwm->running = 1;
	return 0;
}