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
struct gpio_ress {int gpio; int dir; int /*<<< orphan*/  init; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct gpio_ress *gpios, int size)
{
	int i, rc = 0;
	int gpio;
	int dir;

	for (i = 0; (!rc) && (i < size); i++) {
		gpio = gpios[i].gpio;
		dir = gpios[i].dir;
		rc = FUNC3(gpio, gpios[i].desc);
		if (rc) {
			FUNC4("Error requesting GPIO %d(%s) : %d\n",
			       gpio, gpios[i].desc, rc);
			continue;
		}
		if (dir)
			FUNC1(gpio, gpios[i].init);
		else
			FUNC0(gpio);
	}
	while ((rc) && (--i >= 0))
		FUNC2(gpios[i].gpio);
	return rc;
}