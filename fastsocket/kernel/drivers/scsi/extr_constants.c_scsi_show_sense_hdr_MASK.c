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
struct scsi_sense_hdr {int response_code; int /*<<< orphan*/  sense_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct scsi_sense_hdr*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct scsi_sense_hdr *sshdr)
{
	const char *sense_txt;

	sense_txt = FUNC2(sshdr->sense_key);
	if (sense_txt)
		FUNC0("Sense Key : %s ", sense_txt);
	else
		FUNC0("Sense Key : 0x%x ", sshdr->sense_key);

	FUNC0("%s", FUNC1(sshdr) ? "[deferred] " :
	       "[current] ");

	if (sshdr->response_code >= 0x72)
		FUNC0("[descriptor]");

	FUNC0("\n");
}