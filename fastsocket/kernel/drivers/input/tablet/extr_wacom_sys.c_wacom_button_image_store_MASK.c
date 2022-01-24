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
struct wacom {int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct wacom* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wacom*,int,char const*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, int button_id,
					const char *buf, size_t count)
{
	struct wacom *wacom = FUNC0(dev);
	int err;

	if (count != 1024)
		return -EINVAL;

	FUNC1(&wacom->lock);

	err = FUNC3(wacom, button_id, buf);

	FUNC2(&wacom->lock);

	return err < 0 ? err : count;
}