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
struct pcd_unit {int dummy; } ;
struct cdrom_device_info {struct pcd_unit* handle; } ;

/* Variables and functions */
 int CDS_DISC_OK ; 
 int CDS_DRIVE_NOT_READY ; 
 int CDS_NO_DISC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PCD_READY_TMO ; 
 scalar_t__ FUNC1 (struct pcd_unit*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pcd_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcd_scratch ; 

__attribute__((used)) static int FUNC3(struct cdrom_device_info *cdi, int slot_nr)
{
	char rc_cmd[12] = { 0x25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
	struct pcd_unit *cd = cdi->handle;

	if (FUNC2(cd, PCD_READY_TMO))
		return CDS_DRIVE_NOT_READY;
	if (FUNC1(cd, rc_cmd, 8, pcd_scratch, FUNC0("check media")))
		return CDS_NO_DISC;
	return CDS_DISC_OK;
}