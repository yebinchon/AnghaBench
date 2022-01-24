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
typedef  int u16 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  MODE_PAGE_ALL_LEN ; 
#define  MODE_PAGE_CACHING 132 
 int /*<<< orphan*/  MODE_PAGE_CACHING_LEN ; 
#define  MODE_PAGE_CONTROL 131 
 int /*<<< orphan*/  MODE_PAGE_CONTROL_LEN ; 
#define  MODE_PAGE_INFO_EXCEP 130 
 int /*<<< orphan*/  MODE_PAGE_INF_EXC_LEN ; 
#define  MODE_PAGE_POWER_CONDITION 129 
 int /*<<< orphan*/  MODE_PAGE_POW_CND_LEN ; 
#define  MODE_PAGE_RETURN_ALL 128 
 scalar_t__ MODE_SENSE ; 
 int /*<<< orphan*/  MODE_SENSE10_ALLOC_LEN_OFFSET ; 
 int /*<<< orphan*/  MODE_SENSE6_ALLOC_LEN_OFFSET ; 
 int MODE_SENSE_PAGE_CODE_MASK ; 
 int /*<<< orphan*/  MODE_SENSE_PAGE_CODE_OFFSET ; 
 int MODE_SENSE_PAGE_CONTROL_MASK ; 
 int /*<<< orphan*/  MODE_SENSE_PAGE_CONTROL_OFFSET ; 
 int MODE_SENSE_PC_CURRENT_VALUES ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_ASCQ_CAUSE_NOT_REPORTABLE ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_CDB ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int FUNC3 (struct sg_io_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_trans_fill_all_pages ; 
 int /*<<< orphan*/  nvme_trans_fill_caching_page ; 
 int /*<<< orphan*/  nvme_trans_fill_control_page ; 
 int /*<<< orphan*/  nvme_trans_fill_inf_exc_page ; 
 int /*<<< orphan*/  nvme_trans_fill_pow_cnd_page ; 
 int FUNC4 (struct nvme_ns*,struct sg_io_hdr*,int*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nvme_ns *ns, struct sg_io_hdr *hdr,
							u8 *cmd)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	u16 alloc_len;
	u8 cdb10 = 0;
	u8 page_code;
	u8 pc;

	if (FUNC0(cmd) == MODE_SENSE) {
		alloc_len = FUNC2(cmd, MODE_SENSE6_ALLOC_LEN_OFFSET);
	} else {
		alloc_len = FUNC1(cmd,
						MODE_SENSE10_ALLOC_LEN_OFFSET);
		cdb10 = 1;
	}

	pc = FUNC2(cmd, MODE_SENSE_PAGE_CONTROL_OFFSET) &
						MODE_SENSE_PAGE_CONTROL_MASK;
	if (pc != MODE_SENSE_PC_CURRENT_VALUES) {
		res = FUNC3(hdr, SAM_STAT_CHECK_CONDITION,
					ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
					SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
		goto out;
	}

	page_code = FUNC2(cmd, MODE_SENSE_PAGE_CODE_OFFSET) &
					MODE_SENSE_PAGE_CODE_MASK;
	switch (page_code) {
	case MODE_PAGE_CACHING:
		res = FUNC4(ns, hdr, cmd, alloc_len,
						cdb10,
						&nvme_trans_fill_caching_page,
						MODE_PAGE_CACHING_LEN);
		break;
	case MODE_PAGE_CONTROL:
		res = FUNC4(ns, hdr, cmd, alloc_len,
						cdb10,
						&nvme_trans_fill_control_page,
						MODE_PAGE_CONTROL_LEN);
		break;
	case MODE_PAGE_POWER_CONDITION:
		res = FUNC4(ns, hdr, cmd, alloc_len,
						cdb10,
						&nvme_trans_fill_pow_cnd_page,
						MODE_PAGE_POW_CND_LEN);
		break;
	case MODE_PAGE_INFO_EXCEP:
		res = FUNC4(ns, hdr, cmd, alloc_len,
						cdb10,
						&nvme_trans_fill_inf_exc_page,
						MODE_PAGE_INF_EXC_LEN);
		break;
	case MODE_PAGE_RETURN_ALL:
		res = FUNC4(ns, hdr, cmd, alloc_len,
						cdb10,
						&nvme_trans_fill_all_pages,
						MODE_PAGE_ALL_LEN);
		break;
	default:
		res = FUNC3(hdr, SAM_STAT_CHECK_CONDITION,
					ILLEGAL_REQUEST, SCSI_ASC_INVALID_CDB,
					SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
		break;
	}

 out:
	return res;
}