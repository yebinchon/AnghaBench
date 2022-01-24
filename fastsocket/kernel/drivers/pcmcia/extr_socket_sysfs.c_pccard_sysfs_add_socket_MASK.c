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
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  pccard_cis_attr ; 
 int /*<<< orphan*/  socket_attrs ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct device *dev)
{
	int ret = 0;

	ret = FUNC1(&dev->kobj, &socket_attrs);
	if (!ret) {
		ret = FUNC0(&dev->kobj, &pccard_cis_attr);
		if (ret)
			FUNC2(&dev->kobj, &socket_attrs);
	}
	return ret;
}