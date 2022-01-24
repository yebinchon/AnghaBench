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
struct of_device {int /*<<< orphan*/  node; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct of_device ofdev; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC1 (char*,char*,char const*) ; 
 int FUNC2 (char const*) ; 
 TYPE_1__* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4 (struct device *dev, struct device_attribute *attr, char *buf)
{
	struct of_device *of;
	const char *compat;
	int cplen;
	int length = 0;

	of = &FUNC3 (dev)->ofdev;
	compat = FUNC0(of->node, "compatible", &cplen);
	if (!compat) {
		*buf = '\0';
		return 0;
	}
	while (cplen > 0) {
		int l;
		length += FUNC1 (buf, "%s\n", compat);
		buf += length;
		l = FUNC2 (compat) + 1;
		compat += l;
		cplen -= l;
	}

	return length;
}