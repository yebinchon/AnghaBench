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
typedef  int /*<<< orphan*/  u8 ;
struct scsi_sense_hdr {scalar_t__ sense_key; } ;
struct scsi_device {int changed; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int MAX_RETRIES ; 
 int /*<<< orphan*/  SR_TIMEOUT ; 
 int /*<<< orphan*/  TEST_UNIT_READY ; 
 scalar_t__ UNIT_ATTENTION ; 
 int FUNC0 (struct scsi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct scsi_sense_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct scsi_device *sdev, struct scsi_sense_hdr *sshdr)
{
	int retries = MAX_RETRIES;
	int the_result;
	u8 cmd[] = {TEST_UNIT_READY, 0, 0, 0, 0, 0 };

	/* issue TEST_UNIT_READY until the initial startup UNIT_ATTENTION
	 * conditions are gone, or a timeout happens
	 */
	do {
		the_result = FUNC0(sdev, cmd, DMA_NONE, NULL,
					      0, sshdr, SR_TIMEOUT,
					      retries--, NULL);
		if (FUNC1(sshdr) &&
		    sshdr->sense_key == UNIT_ATTENTION)
			sdev->changed = 1;

	} while (retries > 0 &&
		 (!FUNC2(the_result) ||
		  (FUNC1(sshdr) &&
		   sshdr->sense_key == UNIT_ATTENTION)));
	return the_result;
}