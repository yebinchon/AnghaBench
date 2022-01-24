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
struct sh_rtc {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sh_rtc*) ; 
 int FUNC2 (struct sh_rtc*) ; 
 int FUNC3 (struct sh_rtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct sh_rtc *rtc = dev_id;
	int ret;

	FUNC4(&rtc->lock);
	ret = FUNC2(rtc);
	ret |= FUNC1(rtc);
	ret |= FUNC3(rtc);
	FUNC5(&rtc->lock);

	return FUNC0(ret);
}