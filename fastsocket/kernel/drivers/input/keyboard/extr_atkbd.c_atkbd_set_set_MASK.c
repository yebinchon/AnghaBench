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
struct atkbd {unsigned long set; unsigned char extra; struct input_dev* dev; int /*<<< orphan*/  write; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC1 (struct atkbd*) ; 
 void* FUNC2 (struct atkbd*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct atkbd*) ; 
 struct input_dev* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int FUNC7 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 scalar_t__ FUNC9 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC10(struct atkbd *atkbd, const char *buf, size_t count)
{
	struct input_dev *old_dev, *new_dev;
	unsigned long value;
	int err;
	unsigned char old_set, old_extra;

	if (!atkbd->write)
		return -EIO;

	if (FUNC9(buf, 10, &value) || (value != 2 && value != 3))
		return -EINVAL;

	if (atkbd->set != value) {
		old_dev = atkbd->dev;
		old_extra = atkbd->extra;
		old_set = atkbd->set;

		new_dev = FUNC5();
		if (!new_dev)
			return -ENOMEM;

		atkbd->dev = new_dev;
		atkbd->set = FUNC2(atkbd, value, atkbd->extra);
		FUNC1(atkbd);
		FUNC0(atkbd);
		FUNC4(atkbd);
		FUNC3(atkbd);

		err = FUNC7(atkbd->dev);
		if (err) {
			FUNC6(new_dev);

			atkbd->dev = old_dev;
			atkbd->set = FUNC2(atkbd, old_set, old_extra);
			FUNC4(atkbd);
			FUNC3(atkbd);

			return err;
		}
		FUNC8(old_dev);
	}
	return count;
}