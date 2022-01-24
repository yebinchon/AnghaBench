#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_sense {int dummy; } ;
struct cdrom_ti {scalar_t__ cdti_trk0; scalar_t__ cdti_trk1; } ;
struct TYPE_2__ {unsigned long lba; } ;
struct atapi_toc_entry {TYPE_1__ addr; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int BLK_MAX_CDB ; 
 scalar_t__ CDROM_LEADOUT ; 
 int EINVAL ; 
 unsigned char GPCMD_PLAY_AUDIO_MSF ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,struct atapi_toc_entry**) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct request_sense*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(ide_drive_t *drive, void *arg)
{
	struct cdrom_ti *ti = arg;
	struct atapi_toc_entry *first_toc, *last_toc;
	unsigned long lba_start, lba_end;
	int stat;
	struct request_sense sense;
	unsigned char cmd[BLK_MAX_CDB];

	stat = FUNC0(drive, ti->cdti_trk0, &first_toc);
	if (stat)
		return stat;

	stat = FUNC0(drive, ti->cdti_trk1, &last_toc);
	if (stat)
		return stat;

	if (ti->cdti_trk1 != CDROM_LEADOUT)
		++last_toc;
	lba_start = first_toc->addr.lba;
	lba_end   = last_toc->addr.lba;

	if (lba_end <= lba_start)
		return -EINVAL;

	FUNC3(cmd, 0, BLK_MAX_CDB);

	cmd[0] = GPCMD_PLAY_AUDIO_MSF;
	FUNC2(lba_start,   &cmd[3], &cmd[4], &cmd[5]);
	FUNC2(lba_end - 1, &cmd[6], &cmd[7], &cmd[8]);

	return FUNC1(drive, cmd, 0, NULL, NULL, &sense, 0, 0);
}