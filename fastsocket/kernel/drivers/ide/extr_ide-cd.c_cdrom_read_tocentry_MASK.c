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
struct request_sense {int dummy; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int BLK_MAX_CDB ; 
 unsigned char GPCMD_READ_TOC_PMA_ATIP ; 
 int /*<<< orphan*/  IDE_DBG_FUNC ; 
 int /*<<< orphan*/  REQ_QUIET ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,char*,int*,struct request_sense*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(ide_drive_t *drive, int trackno, int msf_flag,
				int format, char *buf, int buflen,
				struct request_sense *sense)
{
	unsigned char cmd[BLK_MAX_CDB];

	FUNC1(IDE_DBG_FUNC, "enter");

	FUNC2(cmd, 0, BLK_MAX_CDB);

	cmd[0] = GPCMD_READ_TOC_PMA_ATIP;
	cmd[6] = trackno;
	cmd[7] = (buflen >> 8);
	cmd[8] = (buflen & 0xff);
	cmd[9] = (format << 6);

	if (msf_flag)
		cmd[1] = 2;

	return FUNC0(drive, cmd, 0, buf, &buflen, sense, 0, REQ_QUIET);
}