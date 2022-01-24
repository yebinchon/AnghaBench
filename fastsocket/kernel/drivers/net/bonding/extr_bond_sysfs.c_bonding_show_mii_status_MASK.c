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
struct slave {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int /*<<< orphan*/  curr_slave_lock; struct slave* curr_active_slave; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 struct bonding* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *d,
				       struct device_attribute *attr,
				       char *buf)
{
	struct slave *curr;
	struct bonding *bond = FUNC3(d);

	FUNC0(&bond->curr_slave_lock);
	curr = bond->curr_active_slave;
	FUNC1(&bond->curr_slave_lock);

	return FUNC2(buf, "%s\n", curr ? "up" : "down");
}