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
struct serio {int /*<<< orphan*/ * drv; } ;
struct device {int dummy; } ;
typedef  struct atkbd atkbd ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  atkbd_drv ; 
 scalar_t__ FUNC0 (struct serio*) ; 
 int FUNC1 (struct serio*) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 
 struct serio* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, char *buf,
				ssize_t (*handler)(struct atkbd *, char *))
{
	struct serio *serio = FUNC3(dev);
	int retval;

	retval = FUNC1(serio);
	if (retval)
		return retval;

	if (serio->drv != &atkbd_drv) {
		retval = -ENODEV;
		goto out;
	}

	retval = handler((struct atkbd *)FUNC0(serio), buf);

out:
	FUNC2(serio);
	return retval;
}