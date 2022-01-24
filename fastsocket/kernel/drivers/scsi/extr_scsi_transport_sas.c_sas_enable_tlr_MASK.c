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
struct scsi_device {int dummy; } ;
struct sas_end_device {int tlr_enabled; } ;

/* Variables and functions */
 struct sas_end_device* FUNC0 (struct scsi_device*) ; 
 unsigned int FUNC1 (struct scsi_device*) ; 

void FUNC2(struct scsi_device *sdev)
{
	unsigned int tlr_supported = 0;
	tlr_supported  = FUNC1(sdev);

	if (tlr_supported) {
		struct sas_end_device *rdev = FUNC0(sdev);

		rdev->tlr_enabled = 1;
	}

	return;
}