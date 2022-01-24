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
struct psmouse_attribute {int (* show ) (struct psmouse*,int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  data; } ;
struct psmouse {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  psmouse_drv ; 
 struct psmouse* FUNC0 (struct serio*) ; 
 int FUNC1 (struct serio*) ; 
 int /*<<< orphan*/  FUNC2 (struct serio*) ; 
 int FUNC3 (struct psmouse*,int /*<<< orphan*/ ,char*) ; 
 struct psmouse_attribute* FUNC4 (struct device_attribute*) ; 
 struct serio* FUNC5 (struct device*) ; 

ssize_t FUNC6(struct device *dev, struct device_attribute *devattr,
				 char *buf)
{
	struct serio *serio = FUNC5(dev);
	struct psmouse_attribute *attr = FUNC4(devattr);
	struct psmouse *psmouse;
	int retval;

	retval = FUNC1(serio);
	if (retval)
		return retval;

	if (serio->drv != &psmouse_drv) {
		retval = -ENODEV;
		goto out;
	}

	psmouse = FUNC0(serio);

	retval = attr->show(psmouse, attr->data, buf);

out:
	FUNC2(serio);
	return retval;
}