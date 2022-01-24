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
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct scsi_device* FUNC0 (struct Scsi_Host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

struct scsi_device *FUNC4(struct Scsi_Host *shost,
		uint channel, uint id, uint lun)
{
	struct scsi_device *sdev;
	unsigned long flags;

	FUNC2(shost->host_lock, flags);
	sdev = FUNC0(shost, channel, id, lun);
	if (sdev && FUNC1(sdev))
		sdev = NULL;
	FUNC3(shost->host_lock, flags);

	return sdev;
}