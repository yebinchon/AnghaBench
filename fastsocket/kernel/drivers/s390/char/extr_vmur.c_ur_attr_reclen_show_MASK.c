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
struct urdev {int /*<<< orphan*/  reclen; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct urdev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urdev*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct urdev *urd;
	int rc;

	urd = FUNC2(FUNC1(dev));
	if (!urd)
		return -ENODEV;
	rc = FUNC0(buf, "%zu\n", urd->reclen);
	FUNC3(urd);
	return rc;
}