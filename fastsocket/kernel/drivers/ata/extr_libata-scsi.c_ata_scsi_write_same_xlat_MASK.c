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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct scsi_cmnd {int* cmnd; int cmd_len; } ;
struct ata_taskfile {int hob_nsect; int nsect; int flags; int /*<<< orphan*/  command; int /*<<< orphan*/  feature; scalar_t__ hob_feature; int /*<<< orphan*/  protocol; } ;
struct ata_queued_cmd {struct ata_device* dev; struct scsi_cmnd* scsicmd; struct ata_taskfile tf; } ;
struct ata_device {int /*<<< orphan*/  dma_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_CMD_DSM ; 
 int /*<<< orphan*/  ATA_DSM_TRIM ; 
 int /*<<< orphan*/  ATA_PROT_DMA ; 
 int ATA_TFLAG_DEVICE ; 
 int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_LBA48 ; 
 int ATA_TFLAG_WRITE ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (void*,int,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int const*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static unsigned int FUNC9(struct ata_queued_cmd *qc)
{
	struct ata_taskfile *tf = &qc->tf;
	struct scsi_cmnd *scmd = qc->scsicmd;
	struct ata_device *dev = qc->dev;
	const u8 *cdb = scmd->cmnd;
	u64 block;
	u32 n_block;
	u32 size;
	void *buf;

	/* we may not issue DMA commands if no DMA mode is set */
	if (FUNC8(!dev->dma_mode))
		goto invalid_fld;

	if (FUNC8(scmd->cmd_len < 16))
		goto invalid_fld;
	FUNC4(cdb, &block, &n_block);

	/* for now we only support WRITE SAME with the unmap bit set */
	if (FUNC8(!(cdb[1] & 0x8)))
		goto invalid_fld;

	/*
	 * WRITE SAME always has a sector sized buffer as payload, this
	 * should never be a multiple entry S/G list.
	 */
	if (!FUNC5(scmd))
		goto invalid_fld;

	buf = FUNC3(FUNC7(FUNC6(scmd)));
	size = FUNC2(buf, 512, block, n_block);

	tf->protocol = ATA_PROT_DMA;
	tf->hob_feature = 0;
	tf->feature = ATA_DSM_TRIM;
	tf->hob_nsect = (size / 512) >> 8;
	tf->nsect = size / 512;
	tf->command = ATA_CMD_DSM;
	tf->flags |= ATA_TFLAG_ISADDR | ATA_TFLAG_DEVICE | ATA_TFLAG_LBA48 |
		     ATA_TFLAG_WRITE;

	FUNC0(qc);

	return 0;

 invalid_fld:
	FUNC1(scmd, ILLEGAL_REQUEST, 0x24, 0x00);
	/* "Invalid field in cdb" */
	return 1;
}