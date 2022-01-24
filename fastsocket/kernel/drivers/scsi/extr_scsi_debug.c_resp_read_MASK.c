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
typedef  int /*<<< orphan*/  u32 ;
struct sdebug_dev_info {int* sense_buff; } ;
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORTED_COMMAND ; 
 int /*<<< orphan*/  MEDIUM_ERROR ; 
 unsigned long long OPT_MEDIUM_ERR_ADDR ; 
 int SCSI_DEBUG_OPT_MEDIUM_ERR ; 
 int UNRECOVERED_READ_ERR ; 
 int /*<<< orphan*/  atomic_rw ; 
 int check_condition_result ; 
 int FUNC0 (struct sdebug_dev_info*,unsigned long long,unsigned int) ; 
 int FUNC1 (struct scsi_cmnd*,struct sdebug_dev_info*,unsigned long long,unsigned int,int /*<<< orphan*/ ) ; 
 int illegal_condition_result ; 
 int /*<<< orphan*/  FUNC2 (struct sdebug_dev_info*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct scsi_cmnd*,unsigned long long,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ scsi_debug_dix ; 
 int scsi_debug_opts ; 
 scalar_t__ FUNC6 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *SCpnt, unsigned long long lba,
		     unsigned int num, struct sdebug_dev_info *devip,
		     u32 ei_lba)
{
	unsigned long iflags;
	int ret;

	ret = FUNC0(devip, lba, num);
	if (ret)
		return ret;

	if ((SCSI_DEBUG_OPT_MEDIUM_ERR & scsi_debug_opts) &&
	    (lba <= OPT_MEDIUM_ERR_ADDR) &&
	    ((lba + num) > OPT_MEDIUM_ERR_ADDR)) {
		/* claim unrecoverable read error */
		FUNC2(devip, MEDIUM_ERROR, UNRECOVERED_READ_ERR,
				0);
		/* set info field and valid bit for fixed descriptor */
		if (0x70 == (devip->sense_buff[0] & 0x7f)) {
			devip->sense_buff[0] |= 0x80;	/* Valid bit */
			ret = OPT_MEDIUM_ERR_ADDR;
			devip->sense_buff[3] = (ret >> 24) & 0xff;
			devip->sense_buff[4] = (ret >> 16) & 0xff;
			devip->sense_buff[5] = (ret >> 8) & 0xff;
			devip->sense_buff[6] = ret & 0xff;
		}
		return check_condition_result;
	}

	/* DIX + T10 DIF */
	if (scsi_debug_dix && FUNC6(SCpnt)) {
		int prot_ret = FUNC3(SCpnt, lba, num, ei_lba);

		if (prot_ret) {
			FUNC2(devip, ABORTED_COMMAND, 0x10, prot_ret);
			return illegal_condition_result;
		}
	}

	FUNC4(&atomic_rw, iflags);
	ret = FUNC1(SCpnt, devip, lba, num, 0);
	FUNC5(&atomic_rw, iflags);
	return ret;
}