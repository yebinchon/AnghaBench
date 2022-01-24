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
struct scsi_qla_host {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INIT_DONE ; 
 int /*<<< orphan*/  AF_ONLINE ; 
 int DID_NO_CONNECT ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 

void FUNC4(struct scsi_qla_host *ha)
{
	FUNC0(AF_ONLINE, &ha->flags);

	/* Disable the board */
	FUNC1(KERN_INFO, ha, "Disabling the board\n");

	FUNC2(ha, DID_NO_CONNECT << 16);
	FUNC3(ha);
	FUNC0(AF_INIT_DONE, &ha->flags);
}