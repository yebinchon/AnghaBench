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
typedef  int u64 ;
struct sg_iovec {int iov_len; } ;
struct sg_io_hdr {int iovec_count; int dxfer_len; scalar_t__ dxferp; } ;
struct nvme_trans_io_cdb {int xfer_len; } ;
struct nvme_ns {int lba_shift; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
#define  READ_10 135 
#define  READ_12 134 
#define  READ_16 133 
#define  READ_6 132 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_ASCQ_CAUSE_NOT_REPORTABLE ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_PARAMETER ; 
 int SNTI_INTERNAL_ERROR ; 
 int SNTI_TRANSLATION_SUCCESS ; 
#define  WRITE_10 131 
#define  WRITE_12 130 
#define  WRITE_16 129 
#define  WRITE_6 128 
 size_t FUNC0 (struct sg_iovec*,scalar_t__,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (struct sg_io_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvme_ns*,struct sg_io_hdr*,struct nvme_trans_io_cdb*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,struct nvme_trans_io_cdb*) ; 
 int /*<<< orphan*/  FUNC5 (int*,struct nvme_trans_io_cdb*) ; 
 int /*<<< orphan*/  FUNC6 (int*,struct nvme_trans_io_cdb*) ; 
 int /*<<< orphan*/  FUNC7 (int*,struct nvme_trans_io_cdb*) ; 

__attribute__((used)) static int FUNC8(struct nvme_ns *ns, struct sg_io_hdr *hdr, u8 is_write,
							u8 *cmd)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	struct nvme_trans_io_cdb cdb_info;
	u8 opcode = cmd[0];
	u64 xfer_bytes;
	u64 sum_iov_len = 0;
	struct sg_iovec sgl;
	int i;
	size_t not_copied;

	/* Extract Fields from CDB */
	switch (opcode) {
	case WRITE_6:
	case READ_6:
		FUNC7(cmd, &cdb_info);
		break;
	case WRITE_10:
	case READ_10:
		FUNC4(cmd, &cdb_info);
		break;
	case WRITE_12:
	case READ_12:
		FUNC5(cmd, &cdb_info);
		break;
	case WRITE_16:
	case READ_16:
		FUNC6(cmd, &cdb_info);
		break;
	default:
		/* Will never really reach here */
		res = SNTI_INTERNAL_ERROR;
		goto out;
	}

	/* Calculate total length of transfer (in bytes) */
	if (hdr->iovec_count > 0) {
		for (i = 0; i < hdr->iovec_count; i++) {
			not_copied = FUNC0(&sgl, hdr->dxferp +
						i * sizeof(struct sg_iovec),
						sizeof(struct sg_iovec));
			if (not_copied)
				return -EFAULT;
			sum_iov_len += sgl.iov_len;
			/* IO vector sizes should be multiples of block size */
			if (sgl.iov_len % (1 << ns->lba_shift) != 0) {
				res = FUNC2(hdr,
						SAM_STAT_CHECK_CONDITION,
						ILLEGAL_REQUEST,
						SCSI_ASC_INVALID_PARAMETER,
						SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
				goto out;
			}
		}
	} else {
		sum_iov_len = hdr->dxfer_len;
	}

	/* As Per sg ioctl howto, if the lengths differ, use the lower one */
	xfer_bytes = FUNC1(((u64)hdr->dxfer_len), sum_iov_len);

	/* If block count and actual data buffer size dont match, error out */
	if (xfer_bytes != (cdb_info.xfer_len << ns->lba_shift)) {
		res = -EINVAL;
		goto out;
	}

	/* Check for 0 length transfer - it is not illegal */
	if (cdb_info.xfer_len == 0)
		goto out;

	/* Send NVMe IO Command(s) */
	res = FUNC3(ns, hdr, &cdb_info, is_write);
	if (res != SNTI_TRANSLATION_SUCCESS)
		goto out;

 out:
	return res;
}