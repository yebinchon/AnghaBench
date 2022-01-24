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
 int /*<<< orphan*/  S3C64XX_INFORM0 ; 
 int /*<<< orphan*/  S3C64XX_WAKEUP_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c_cpu_resume ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	/* store address of resume. */
	FUNC1(FUNC2(s3c_cpu_resume), S3C64XX_INFORM0);

	/* ensure previous wakeup state is cleared before sleeping */
	FUNC1(FUNC0(S3C64XX_WAKEUP_STAT), S3C64XX_WAKEUP_STAT);
}