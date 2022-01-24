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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7877 {int disabled; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct ad7877* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct ad7877	*ts = FUNC0(dev);

	return FUNC1(buf, "%u\n", ts->disabled);
}