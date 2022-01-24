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
struct serio {int dummy; } ;
struct h3600_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_GPIO_BITSY_ACTION_BUTTON ; 
 int /*<<< orphan*/  IRQ_GPIO_BITSY_NPOWER_BUTTON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct h3600_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct serio*) ; 
 struct h3600_dev* FUNC6 (struct serio*) ; 
 int /*<<< orphan*/  FUNC7 (struct serio*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct serio *serio)
{
	struct h3600_dev *ts = FUNC6(serio);

	FUNC0(IRQ_GPIO_BITSY_ACTION_BUTTON, &ts->dev);
	FUNC0(IRQ_GPIO_BITSY_NPOWER_BUTTON, &ts->dev);
	FUNC1(ts->dev);
	FUNC3(ts->dev);
	FUNC5(serio);
	FUNC7(serio, NULL);
	FUNC2(ts->dev);
	FUNC4(ts);
}