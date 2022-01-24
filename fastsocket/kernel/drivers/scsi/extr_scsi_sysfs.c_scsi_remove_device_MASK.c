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
struct scsi_device {struct Scsi_Host* host; } ;
struct Scsi_Host {int /*<<< orphan*/  scan_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct scsi_device *sdev)
{
	struct Scsi_Host *shost = sdev->host;

	FUNC1(&shost->scan_mutex);
	FUNC0(sdev);
	FUNC2(&shost->scan_mutex);
}