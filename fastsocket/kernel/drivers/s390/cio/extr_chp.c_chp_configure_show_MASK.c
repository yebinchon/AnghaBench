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
struct channel_path {int /*<<< orphan*/  chpid; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct channel_path* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	struct channel_path *cp;
	int status;

	cp = FUNC2(dev);
	status = FUNC0(cp->chpid);
	if (status < 0)
		return status;

	return FUNC1(buf, PAGE_SIZE, "%d\n", status);
}