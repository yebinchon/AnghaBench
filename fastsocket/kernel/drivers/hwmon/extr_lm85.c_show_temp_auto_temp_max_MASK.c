#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lm85_data {TYPE_1__* zone; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int /*<<< orphan*/  range; int /*<<< orphan*/  limit; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct lm85_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_2__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	int nr = FUNC4(attr)->index;
	struct lm85_data *data = FUNC2(dev);
	return FUNC3(buf, "%d\n", FUNC1(data->zone[nr].limit) +
		FUNC0(data->zone[nr].range));
}