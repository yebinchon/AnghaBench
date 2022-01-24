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
struct scsi_device_handler {int dummy; } ;
struct scsi_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_device_handler*,struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*,struct scsi_device_handler*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct scsi_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, void *data)
{
	struct scsi_device_handler *scsi_dh = data;
	struct scsi_device *sdev;

	if (!FUNC4(dev))
		return 0;

	if (!FUNC1(dev))
		return 0;

	sdev = FUNC5(dev);

	if (FUNC0(scsi_dh, sdev))
		FUNC3(sdev, scsi_dh);

	FUNC2(dev);

	return 0;
}