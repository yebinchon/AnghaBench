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
 int /*<<< orphan*/  FUNC0 (struct atkbd*) ; 
 int /*<<< orphan*/  atkbd_drv ; 
 int /*<<< orphan*/  FUNC1 (struct atkbd*) ; 
 struct atkbd* FUNC2 (struct serio*) ; 
 int FUNC3 (struct serio*) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*) ; 
 struct serio* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, const char *buf, size_t count,
				ssize_t (*handler)(struct atkbd *, const char *, size_t))
{
	struct serio *serio = FUNC5(dev);
	struct atkbd *atkbd;
	int retval;

	retval = FUNC3(serio);
	if (retval)
		return retval;

	if (serio->drv != &atkbd_drv) {
		retval = -ENODEV;
		goto out;
	}

	atkbd = FUNC2(serio);
	FUNC0(atkbd);
	retval = handler(atkbd, buf, count);
	FUNC1(atkbd);

out:
	FUNC4(serio);
	return retval;
}