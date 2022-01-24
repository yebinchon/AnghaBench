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
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,struct scsi_device_handler*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct scsi_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, void *data)
{
	struct scsi_device_handler *scsi_dh = data;
	struct scsi_device *sdev;

	if (!FUNC3(dev))
		return 0;

	if (!FUNC0(dev))
		return 0;

	sdev = FUNC4(dev);

	FUNC2(sdev, scsi_dh);

	FUNC1(dev);

	return 0;
}