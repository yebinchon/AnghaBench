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
typedef  int u8 ;
typedef  int /*<<< orphan*/  tf ;
struct ata_taskfile {int lbal; int nsect; int /*<<< orphan*/  command; } ;
struct ata_scsi_args {char* id; } ;

/* Variables and functions */
 int ATA_CMD_ID_ATA ; 
 int /*<<< orphan*/  ATA_DRDY ; 
 int /*<<< orphan*/  ATA_ID_FW_REV ; 
 char* DRV_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_taskfile*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_taskfile*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC4(struct ata_scsi_args *args, u8 *rbuf)
{
	struct ata_taskfile tf;

	FUNC3(&tf, 0, sizeof(tf));

	rbuf[1] = 0x89;			/* our page code */
	rbuf[2] = (0x238 >> 8);		/* page size fixed at 238h */
	rbuf[3] = (0x238 & 0xff);

	FUNC2(&rbuf[8], "linux   ", 8);
	FUNC2(&rbuf[16], "libata          ", 16);
	FUNC2(&rbuf[32], DRV_VERSION, 4);
	FUNC0(args->id, &rbuf[32], ATA_ID_FW_REV, 4);

	/* we don't store the ATA device signature, so we fake it */

	tf.command = ATA_DRDY;		/* really, this is Status reg */
	tf.lbal = 0x1;
	tf.nsect = 0x1;

	FUNC1(&tf, 0, 1, &rbuf[36]);	/* TODO: PMP? */
	rbuf[36] = 0x34;		/* force D2H Reg FIS (34h) */

	rbuf[56] = ATA_CMD_ID_ATA;

	FUNC2(&rbuf[60], &args->id[0], 512);
	return 0;
}