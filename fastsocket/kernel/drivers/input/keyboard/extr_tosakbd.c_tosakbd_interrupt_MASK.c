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
struct tosakbd {int /*<<< orphan*/  timer; } ;
struct platform_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct tosakbd* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *__dev)
{
	struct platform_device *dev = __dev;
	struct tosakbd *tosakbd = FUNC0(dev);

	if (!FUNC1(&tosakbd->timer)) {
		/** wait chattering delay **/
		FUNC3(20);
		FUNC2(dev);
	}

	return IRQ_HANDLED;
}