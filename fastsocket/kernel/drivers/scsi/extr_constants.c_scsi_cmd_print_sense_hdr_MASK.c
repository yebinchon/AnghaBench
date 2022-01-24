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
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_sense_hdr*) ; 

void
FUNC3(struct scsi_cmnd *scmd, const char *desc,
			  struct scsi_sense_hdr *sshdr)
{
	FUNC0(KERN_INFO, scmd, "%s: ", desc);
	FUNC2(sshdr);
	FUNC0(KERN_INFO, scmd, "%s: ", desc);
	FUNC1(sshdr->asc, sshdr->ascq);
}