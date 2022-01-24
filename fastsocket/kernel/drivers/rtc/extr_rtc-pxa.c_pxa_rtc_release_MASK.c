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
struct pxa_rtc {int /*<<< orphan*/  irq_1Hz; int /*<<< orphan*/  irq_Alrm; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int RTSR_HZE ; 
 int RTSR_PIALE ; 
 int RTSR_RDALE1 ; 
 struct pxa_rtc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_rtc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct pxa_rtc *pxa_rtc = FUNC0(dev);

	FUNC3(&pxa_rtc->lock);
	FUNC2(pxa_rtc, RTSR_PIALE | RTSR_RDALE1 | RTSR_HZE);
	FUNC4(&pxa_rtc->lock);

	FUNC1(pxa_rtc->irq_Alrm, dev);
	FUNC1(pxa_rtc->irq_1Hz, dev);
}