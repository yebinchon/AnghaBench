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
struct input_dev {int dummy; } ;
struct atkbd {unsigned long softraw; struct input_dev* dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct atkbd*) ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC6(struct atkbd *atkbd, const char *buf, size_t count)
{
	struct input_dev *old_dev, *new_dev;
	unsigned long value;
	int err;
	unsigned char old_softraw;

	if (FUNC5(buf, 10, &value) || value > 1)
		return -EINVAL;

	if (atkbd->softraw != value) {
		old_dev = atkbd->dev;
		old_softraw = atkbd->softraw;

		new_dev = FUNC1();
		if (!new_dev)
			return -ENOMEM;

		atkbd->dev = new_dev;
		atkbd->softraw = value;
		FUNC0(atkbd);

		err = FUNC3(atkbd->dev);
		if (err) {
			FUNC2(new_dev);

			atkbd->dev = old_dev;
			atkbd->softraw = old_softraw;
			FUNC0(atkbd);

			return err;
		}
		FUNC4(old_dev);
	}
	return count;
}