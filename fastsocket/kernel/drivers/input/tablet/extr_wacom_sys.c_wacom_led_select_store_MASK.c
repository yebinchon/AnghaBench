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
struct TYPE_2__ {unsigned int* select; } ;
struct wacom {int /*<<< orphan*/  lock; TYPE_1__ led; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct wacom* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wacom*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, int set_id,
				      const char *buf, size_t count)
{
	struct wacom *wacom = FUNC0(dev);
	unsigned int id;
	int err;

	id = FUNC3(buf, NULL, 0);

	FUNC1(&wacom->lock);

	wacom->led.select[set_id] = id & 0x3;
	err = FUNC4(wacom);

	FUNC2(&wacom->lock);

	return err < 0 ? err : count;
}