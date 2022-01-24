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
struct cafe_camera {int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  smbus_wait; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int ALLIRQS ; 
 unsigned int FRAMEIRQS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  REG_IRQSTAT ; 
 unsigned int TWSIIRQS ; 
 int /*<<< orphan*/  FUNC0 (struct cafe_camera*,unsigned int) ; 
 unsigned int FUNC1 (struct cafe_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct cafe_camera *cam = data;
	unsigned int irqs;

	FUNC3(&cam->dev_lock);
	irqs = FUNC1(cam, REG_IRQSTAT);
	if ((irqs & ALLIRQS) == 0) {
		FUNC4(&cam->dev_lock);
		return IRQ_NONE;
	}
	if (irqs & FRAMEIRQS)
		FUNC0(cam, irqs);
	if (irqs & TWSIIRQS) {
		FUNC2(cam, REG_IRQSTAT, TWSIIRQS);
		FUNC5(&cam->smbus_wait);
	}
	FUNC4(&cam->dev_lock);
	return IRQ_HANDLED;
}