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
typedef  scalar_t__ u8 ;
struct scsi_cmnd {scalar_t__* cmnd; int cmd_len; int result; } ;
struct ata_device {scalar_t__ class; int cdb_len; } ;
typedef  int /*<<< orphan*/ * ata_xlat_func_t ;

/* Variables and functions */
 scalar_t__ ATA_16 ; 
 scalar_t__ ATA_DEV_ATA ; 
 int FUNC0 (scalar_t__) ; 
 int DID_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct ata_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_device*,struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ; 
 int FUNC4 (struct ata_device*,struct scsi_cmnd*,void (*) (struct scsi_cmnd*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  atapi_passthru16 ; 
 int /*<<< orphan*/ * atapi_xlat ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline int FUNC7(struct scsi_cmnd *scmd,
				      void (*done)(struct scsi_cmnd *),
				      struct ata_device *dev)
{
	u8 scsi_op = scmd->cmnd[0];
	ata_xlat_func_t xlat_func;
	int rc = 0;

	if (dev->class == ATA_DEV_ATA) {
		if (FUNC6(!scmd->cmd_len || scmd->cmd_len > dev->cdb_len))
			goto bad_cdb_len;

		xlat_func = FUNC2(dev, scsi_op);
	} else {
		if (FUNC6(!scmd->cmd_len))
			goto bad_cdb_len;

		xlat_func = NULL;
		if (FUNC5((scsi_op != ATA_16) || !atapi_passthru16)) {
			/* relay SCSI command to ATAPI device */
			int len = FUNC0(scsi_op);
			if (FUNC6(len > scmd->cmd_len || len > dev->cdb_len))
				goto bad_cdb_len;

			xlat_func = atapi_xlat;
		} else {
			/* ATA_16 passthru, treat as an ATA command */
			if (FUNC6(scmd->cmd_len > 16))
				goto bad_cdb_len;

			xlat_func = FUNC2(dev, scsi_op);
		}
	}

	if (xlat_func)
		rc = FUNC4(dev, scmd, done, xlat_func);
	else
		FUNC3(dev, scmd, done);

	return rc;

 bad_cdb_len:
	FUNC1("bad CDB len=%u, scsi_op=0x%02x, max=%u\n",
		scmd->cmd_len, scsi_op, dev->cdb_len);
	scmd->result = DID_ERROR << 16;
	done(scmd);
	return 0;
}