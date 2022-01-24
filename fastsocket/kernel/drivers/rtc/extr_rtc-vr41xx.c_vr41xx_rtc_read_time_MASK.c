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
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  epoch ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,struct rtc_time*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *time)
{
	unsigned long epoch_sec, elapsed_sec;

	epoch_sec = FUNC0(epoch, 1, 1, 0, 0, 0);
	elapsed_sec = FUNC1();

	FUNC2(epoch_sec + elapsed_sec, time);

	return 0;
}