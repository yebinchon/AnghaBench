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
typedef  int ssize_t ;
struct TYPE_4__ {int Major; int Minor; int revMajor; int revMinor; } ;
struct TYPE_5__ {TYPE_1__ tpm_version_1_2; int /*<<< orphan*/  manufacturer_id; } ;
typedef  TYPE_2__ cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_VERSION_1_2 ; 
 int /*<<< orphan*/  TPM_CAP_PROP_MANUFACTURER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,...) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,TYPE_2__*,char*) ; 

ssize_t FUNC3(struct device * dev,
			  struct device_attribute * attr, char *buf)
{
	cap_t cap;
	ssize_t rc;
	char *str = buf;

	rc = FUNC2(dev, TPM_CAP_PROP_MANUFACTURER, &cap,
			"attempting to determine the manufacturer");
	if (rc)
		return 0;
	str += FUNC1(str, "Manufacturer: 0x%x\n",
		       FUNC0(cap.manufacturer_id));
	rc = FUNC2(dev, CAP_VERSION_1_2, &cap,
			 "attempting to determine the 1.2 version");
	if (rc)
		return 0;
	str += FUNC1(str,
		       "TCG version: %d.%d\nFirmware version: %d.%d\n",
		       cap.tpm_version_1_2.Major, cap.tpm_version_1_2.Minor,
		       cap.tpm_version_1_2.revMajor,
		       cap.tpm_version_1_2.revMinor);
	return str - buf;
}