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
struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {unsigned long powered; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct psmouse*,unsigned long) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC2(struct psmouse *psmouse, void *data,
				const char *buf, size_t count)
{
	struct hgpk_data *priv = psmouse->private;
	unsigned long value;
	int err;

	err = FUNC1(buf, 10, &value);
	if (err || value > 1)
		return -EINVAL;

	if (value != priv->powered) {
		/*
		 * hgpk_toggle_power will deal w/ state so
		 * we're not racing w/ irq
		 */
		err = FUNC0(psmouse, value);
		if (!err)
			priv->powered = value;
	}

	return err ? err : count;
}