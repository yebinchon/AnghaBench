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
struct wm8350 {int dummy; } ;
struct regulator_dev {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  REGULATOR_EVENT_REGULATION_OUT ; 
 int /*<<< orphan*/  REGULATOR_EVENT_UNDER_VOLTAGE ; 
 int WM8350_IRQ_CS1 ; 
 int WM8350_IRQ_CS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_dev*,int /*<<< orphan*/ ,struct wm8350*) ; 

__attribute__((used)) static void FUNC3(struct wm8350 *wm8350, int irq, void *data)
{
	struct regulator_dev *rdev = (struct regulator_dev *)data;

	FUNC0(&rdev->mutex);
	if (irq == WM8350_IRQ_CS1 || irq == WM8350_IRQ_CS2)
		FUNC2(rdev,
					      REGULATOR_EVENT_REGULATION_OUT,
					      wm8350);
	else
		FUNC2(rdev,
					      REGULATOR_EVENT_UNDER_VOLTAGE,
					      wm8350);
	FUNC1(&rdev->mutex);
}