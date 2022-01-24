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
struct device {int dummy; } ;
struct hpsb_host {struct device device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fw_host_attrs ; 

__attribute__((used)) static void FUNC3(struct hpsb_host *host)
{
	struct device *dev = &host->device;
	int i;

	for (i = 0; i < FUNC0(fw_host_attrs); i++)
		if (FUNC2(dev, fw_host_attrs[i]))
			goto fail;
	return;
fail:
	FUNC1("Failed to add sysfs attribute");
}