#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ type; } ;
struct serio {struct serio* parent; TYPE_1__ id; int /*<<< orphan*/ * drv; } ;
struct psmouse_attribute {int (* set ) (struct psmouse*,int /*<<< orphan*/ ,char const*,size_t) ;scalar_t__ protect; int /*<<< orphan*/  data; } ;
struct psmouse {scalar_t__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ PSMOUSE_IGNORE ; 
 scalar_t__ SERIO_PS_PSTHRU ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*) ; 
 int /*<<< orphan*/  psmouse_drv ; 
 int /*<<< orphan*/  psmouse_mutex ; 
 struct psmouse* FUNC4 (struct serio*) ; 
 int FUNC5 (struct serio*) ; 
 int /*<<< orphan*/  FUNC6 (struct serio*) ; 
 int FUNC7 (struct psmouse*,int /*<<< orphan*/ ,char const*,size_t) ; 
 struct psmouse_attribute* FUNC8 (struct device_attribute*) ; 
 struct serio* FUNC9 (struct device*) ; 

ssize_t FUNC10(struct device *dev, struct device_attribute *devattr,
				const char *buf, size_t count)
{
	struct serio *serio = FUNC9(dev);
	struct psmouse_attribute *attr = FUNC8(devattr);
	struct psmouse *psmouse, *parent = NULL;
	int retval;

	retval = FUNC5(serio);
	if (retval)
		return retval;

	if (serio->drv != &psmouse_drv) {
		retval = -ENODEV;
		goto out_unpin;
	}

	retval = FUNC0(&psmouse_mutex);
	if (retval)
		goto out_unpin;

	psmouse = FUNC4(serio);

	if (attr->protect) {
		if (psmouse->state == PSMOUSE_IGNORE) {
			retval = -ENODEV;
			goto out_unlock;
		}

		if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
			parent = FUNC4(serio->parent);
			FUNC3(parent);
		}

		FUNC3(psmouse);
	}

	retval = attr->set(psmouse, attr->data, buf, count);

	if (attr->protect) {
		if (retval != -ENODEV)
			FUNC2(psmouse);

		if (parent)
			FUNC2(parent);
	}

 out_unlock:
	FUNC1(&psmouse_mutex);
 out_unpin:
	FUNC6(serio);
	return retval;
}