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
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FC_BINDTYPE_MAX_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char const*) ; 
 struct Scsi_Host* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC3(dev);
	const char *name;

	name = FUNC1(FUNC0(shost));
	if (!name)
		return -EINVAL;
	return FUNC2(buf, FC_BINDTYPE_MAX_NAMELEN, "%s\n", name);
}