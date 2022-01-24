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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 TYPE_1__* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2 (struct device *dev, struct device_attribute *attr, char *buf)
{
	int online;

	online = (FUNC1(dev)->state == CCWGROUP_ONLINE);

	return FUNC0(buf, online ? "1\n" : "0\n");
}