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
struct cdrom_mcn {char* medium_catalog_number; } ;
struct cdrom_device_info {int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BLK_MAX_CDB ; 
 unsigned char GPCMD_READ_SUBCHANNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,char*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct cdrom_device_info *cdi,
		      struct cdrom_mcn *mcn_info)
{
	ide_drive_t *drive = cdi->handle;
	int stat, mcnlen;
	char buf[24];
	unsigned char cmd[BLK_MAX_CDB];
	unsigned len = sizeof(buf);

	FUNC2(cmd, 0, BLK_MAX_CDB);

	cmd[0] = GPCMD_READ_SUBCHANNEL;
	cmd[1] = 2;		/* MSF addressing */
	cmd[2] = 0x40;	/* request subQ data */
	cmd[3] = 2;		/* format */
	cmd[8] = len;

	stat = FUNC0(drive, cmd, 0, buf, &len, NULL, 0, 0);
	if (stat)
		return stat;

	mcnlen = sizeof(mcn_info->medium_catalog_number) - 1;
	FUNC1(mcn_info->medium_catalog_number, buf + 9, mcnlen);
	mcn_info->medium_catalog_number[mcnlen] = '\0';

	return 0;
}