#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  disable; } ;
struct TYPE_5__ {TYPE_1__ perm_flags; } ;
typedef  TYPE_2__ cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  TPM_CAP_FLAG_PERM ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ,TYPE_2__*,char*) ; 

ssize_t FUNC2(struct device * dev, struct device_attribute * attr,
			char *buf)
{
	cap_t cap;
	ssize_t rc;

	rc = FUNC1(dev, TPM_CAP_FLAG_PERM, &cap,
			 "attempting to determine the permanent enabled state");
	if (rc)
		return 0;

	rc = FUNC0(buf, "%d\n", !cap.perm_flags.disable);
	return rc;
}