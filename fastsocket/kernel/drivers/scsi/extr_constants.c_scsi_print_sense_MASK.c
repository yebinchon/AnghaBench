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
struct scsi_sense_hdr {int /*<<< orphan*/  ascq; int /*<<< orphan*/  asc; } ;
struct scsi_cmnd {int /*<<< orphan*/  sense_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_sense_hdr*) ; 

void FUNC5(char *name, struct scsi_cmnd *cmd)
{
	struct scsi_sense_hdr sshdr;

	FUNC0(KERN_INFO, cmd, "");
	FUNC1(cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE,
				 &sshdr);
	FUNC4(&sshdr);
	FUNC2(cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE,
				 &sshdr);
	FUNC0(KERN_INFO, cmd, "");
	FUNC3(sshdr.asc, sshdr.ascq);
}