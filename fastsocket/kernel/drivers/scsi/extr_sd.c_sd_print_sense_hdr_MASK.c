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
struct scsi_disk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_disk*,char*) ; 

__attribute__((used)) static void FUNC3(struct scsi_disk *sdkp,
			       struct scsi_sense_hdr *sshdr)
{
	FUNC2(KERN_INFO, sdkp, "");
	FUNC1(sshdr);
	FUNC2(KERN_INFO, sdkp, "");
	FUNC0(sshdr->asc, sshdr->ascq);
}