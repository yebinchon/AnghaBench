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
typedef  int /*<<< orphan*/  uint ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 struct scsi_device* FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 struct Scsi_Host* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 

__attribute__((used)) static int FUNC5(uint host, uint channel, uint id, uint lun)
{
	struct scsi_device *sdev;
	struct Scsi_Host *shost;
	int error = -ENXIO;

	shost = FUNC2(host);
	if (!shost)
		return error;
	sdev = FUNC0(shost, channel, id, lun);
	if (sdev) {
		FUNC4(sdev);
		FUNC1(sdev);
		error = 0;
	}

	FUNC3(shost);
	return error;
}