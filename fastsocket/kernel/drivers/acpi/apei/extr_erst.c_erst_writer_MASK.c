#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct pstore_info {int dummy; } ;
struct TYPE_5__ {int section_count; int record_length; int /*<<< orphan*/  record_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  notification_type; int /*<<< orphan*/  creator_id; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  validation_bits; void* error_severity; int /*<<< orphan*/  signature_end; int /*<<< orphan*/  revision; int /*<<< orphan*/  signature; } ;
struct TYPE_4__ {int section_offset; size_t section_length; void* section_severity; int /*<<< orphan*/  section_type; int /*<<< orphan*/  flags; scalar_t__ validation_bits; int /*<<< orphan*/  revision; } ;
struct cper_pstore_record {TYPE_2__ hdr; TYPE_1__ sec_hdr; } ;
typedef  enum pstore_type_id { ____Placeholder_pstore_type_id } pstore_type_id ;
typedef  enum kmsg_dump_reason { ____Placeholder_kmsg_dump_reason } kmsg_dump_reason ;
struct TYPE_6__ {scalar_t__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPER_CREATOR_PSTORE ; 
 int /*<<< orphan*/  CPER_HW_ERROR_FLAGS_PREVERR ; 
 int /*<<< orphan*/  CPER_NOTIFY_MCE ; 
 int /*<<< orphan*/  CPER_RECORD_REV ; 
 int /*<<< orphan*/  CPER_SECTION_TYPE_DMESG ; 
 int /*<<< orphan*/  CPER_SECTION_TYPE_MCE ; 
 int /*<<< orphan*/  CPER_SEC_PRIMARY ; 
 int /*<<< orphan*/  CPER_SEC_REV ; 
 void* CPER_SEV_FATAL ; 
 int /*<<< orphan*/  CPER_SIG_END ; 
 int /*<<< orphan*/  CPER_SIG_RECORD ; 
 int /*<<< orphan*/  CPER_SIG_SIZE ; 
 int /*<<< orphan*/  CPER_VALID_TIMESTAMP ; 
 int EINVAL ; 
#define  PSTORE_TYPE_DMESG 129 
#define  PSTORE_TYPE_MCE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__ erst_info ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cper_pstore_record*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(enum pstore_type_id type, enum kmsg_dump_reason reason,
		       u64 *id, unsigned int part, int count,
		       size_t size, struct pstore_info *psi)
{
	struct cper_pstore_record *rcd = (struct cper_pstore_record *)
					(erst_info.buf - sizeof(*rcd));
	int ret;

	FUNC4(rcd, 0, sizeof(*rcd));
	FUNC3(rcd->hdr.signature, CPER_SIG_RECORD, CPER_SIG_SIZE);
	rcd->hdr.revision = CPER_RECORD_REV;
	rcd->hdr.signature_end = CPER_SIG_END;
	rcd->hdr.section_count = 1;
	rcd->hdr.error_severity = CPER_SEV_FATAL;
	/* timestamp valid. platform_id, partition_id are invalid */
	rcd->hdr.validation_bits = CPER_VALID_TIMESTAMP;
	rcd->hdr.timestamp = FUNC2();
	rcd->hdr.record_length = sizeof(*rcd) + size;
	rcd->hdr.creator_id = CPER_CREATOR_PSTORE;
	rcd->hdr.notification_type = CPER_NOTIFY_MCE;
	rcd->hdr.record_id = FUNC0();
	rcd->hdr.flags = CPER_HW_ERROR_FLAGS_PREVERR;

	rcd->sec_hdr.section_offset = sizeof(*rcd);
	rcd->sec_hdr.section_length = size;
	rcd->sec_hdr.revision = CPER_SEC_REV;
	/* fru_id and fru_text is invalid */
	rcd->sec_hdr.validation_bits = 0;
	rcd->sec_hdr.flags = CPER_SEC_PRIMARY;
	switch (type) {
	case PSTORE_TYPE_DMESG:
		rcd->sec_hdr.section_type = CPER_SECTION_TYPE_DMESG;
		break;
	case PSTORE_TYPE_MCE:
		rcd->sec_hdr.section_type = CPER_SECTION_TYPE_MCE;
		break;
	default:
		return -EINVAL;
	}
	rcd->sec_hdr.section_severity = CPER_SEV_FATAL;

	ret = FUNC1(&rcd->hdr);
	*id = rcd->hdr.record_id;

	return ret;
}