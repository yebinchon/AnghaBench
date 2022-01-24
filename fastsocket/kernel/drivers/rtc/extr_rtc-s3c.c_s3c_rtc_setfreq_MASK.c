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
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S3C2410_TICNT ; 
 unsigned int S3C2410_TICNT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ s3c_rtc_base ; 
 int /*<<< orphan*/  s3c_rtc_pie_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev, int freq)
{
	unsigned int tmp;

	if (!FUNC0(freq))
		return -EINVAL;

	FUNC2(&s3c_rtc_pie_lock);

	tmp = FUNC1(s3c_rtc_base + S3C2410_TICNT) & S3C2410_TICNT_ENABLE;
	tmp |= (128 / freq)-1;

	FUNC4(tmp, s3c_rtc_base + S3C2410_TICNT);
	FUNC3(&s3c_rtc_pie_lock);

	return 0;
}