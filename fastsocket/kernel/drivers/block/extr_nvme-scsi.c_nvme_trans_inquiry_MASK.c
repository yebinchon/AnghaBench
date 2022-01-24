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
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 scalar_t__ INQ_STANDARD_INQUIRY_PAGE ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  SCSI_ASCQ_CAUSE_NOT_REPORTABLE ; 
 int /*<<< orphan*/  SCSI_ASC_INVALID_CDB ; 
 int SNTI_TRANSLATION_SUCCESS ; 
 int /*<<< orphan*/  STANDARD_INQUIRY_LENGTH ; 
#define  VPD_BLOCK_DEV_CHARACTERISTICS 132 
#define  VPD_DEVICE_IDENTIFIERS 131 
#define  VPD_EXTENDED_INQUIRY 130 
#define  VPD_SERIAL_NUMBER 129 
#define  VPD_SUPPORTED_PAGES 128 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct nvme_ns*,struct sg_io_hdr*,int) ; 
 int FUNC6 (struct sg_io_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nvme_ns*,struct sg_io_hdr*,scalar_t__*,int) ; 
 int FUNC8 (struct nvme_ns*,struct sg_io_hdr*,int) ; 
 int FUNC9 (struct nvme_ns*,struct sg_io_hdr*,scalar_t__*,int) ; 
 int FUNC10 (struct nvme_ns*,struct sg_io_hdr*,scalar_t__*,int) ; 
 int FUNC11 (struct nvme_ns*,struct sg_io_hdr*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC12(struct nvme_ns *ns, struct sg_io_hdr *hdr,
							u8 *cmd)
{
	int res = SNTI_TRANSLATION_SUCCESS;
	u8 evpd;
	u8 page_code;
	int alloc_len;
	u8 *inq_response;

	evpd = FUNC1(cmd);
	page_code = FUNC2(cmd);
	alloc_len = FUNC0(cmd);

	inq_response = FUNC4(STANDARD_INQUIRY_LENGTH, GFP_KERNEL);
	if (inq_response == NULL) {
		res = -ENOMEM;
		goto out_mem;
	}

	if (evpd == 0) {
		if (page_code == INQ_STANDARD_INQUIRY_PAGE) {
			res = FUNC9(ns, hdr,
						inq_response, alloc_len);
		} else {
			res = FUNC6(hdr,
						SAM_STAT_CHECK_CONDITION,
						ILLEGAL_REQUEST,
						SCSI_ASC_INVALID_CDB,
						SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
		}
	} else {
		switch (page_code) {
		case VPD_SUPPORTED_PAGES:
			res = FUNC10(ns, hdr,
						inq_response, alloc_len);
			break;
		case VPD_SERIAL_NUMBER:
			res = FUNC11(ns, hdr, inq_response,
								alloc_len);
			break;
		case VPD_DEVICE_IDENTIFIERS:
			res = FUNC7(ns, hdr, inq_response,
								alloc_len);
			break;
		case VPD_EXTENDED_INQUIRY:
			res = FUNC8(ns, hdr, alloc_len);
			break;
		case VPD_BLOCK_DEV_CHARACTERISTICS:
			res = FUNC5(ns, hdr, alloc_len);
			break;
		default:
			res = FUNC6(hdr,
						SAM_STAT_CHECK_CONDITION,
						ILLEGAL_REQUEST,
						SCSI_ASC_INVALID_CDB,
						SCSI_ASCQ_CAUSE_NOT_REPORTABLE);
			break;
		}
	}
	FUNC3(inq_response);
 out_mem:
	return res;
}