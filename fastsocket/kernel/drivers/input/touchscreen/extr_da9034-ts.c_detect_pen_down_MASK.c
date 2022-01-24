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
struct da9034_touch {int /*<<< orphan*/  da9034_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9034_AUTO_CTRL2 ; 
 int /*<<< orphan*/  DA9034_PEN_DETECT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct da9034_touch *touch, int on)
{
	if (on)
		return FUNC1(touch->da9034_dev,
				DA9034_AUTO_CTRL2, DA9034_PEN_DETECT);
	else
		return FUNC0(touch->da9034_dev,
				DA9034_AUTO_CTRL2, DA9034_PEN_DETECT);
}