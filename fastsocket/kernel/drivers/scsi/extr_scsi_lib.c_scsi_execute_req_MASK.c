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
struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int DRIVER_ERROR ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct scsi_device*,unsigned char const*,int,void*,unsigned int,char*,int,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 

int FUNC4(struct scsi_device *sdev, const unsigned char *cmd,
		     int data_direction, void *buffer, unsigned bufflen,
		     struct scsi_sense_hdr *sshdr, int timeout, int retries,
		     int *resid)
{
	char *sense = NULL;
	int result;
	
	if (sshdr) {
		sense = FUNC1(SCSI_SENSE_BUFFERSIZE, GFP_NOIO);
		if (!sense)
			return DRIVER_ERROR << 24;
	}
	result = FUNC2(sdev, cmd, data_direction, buffer, bufflen,
			      sense, timeout, retries, 0, resid);
	if (sshdr)
		FUNC3(sense, SCSI_SENSE_BUFFERSIZE, sshdr);

	FUNC0(sense);
	return result;
}