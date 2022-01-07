
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mce {int dummy; } ;
struct TYPE_4__ {int section_count; int record_length; int flags; int record_id; int notification_type; int creator_id; scalar_t__ validation_bits; void* error_severity; int signature_end; int revision; int * signature; } ;
struct TYPE_3__ {int section_offset; int section_length; void* section_severity; int section_type; int flags; scalar_t__ validation_bits; int revision; } ;
struct cper_mce_record {TYPE_2__ hdr; int mce; TYPE_1__ sec_hdr; } ;
typedef int rcd ;


 int CPER_CREATOR_MCE ;
 int CPER_HW_ERROR_FLAGS_PREVERR ;
 int CPER_NOTIFY_MCE ;
 int CPER_RECORD_REV ;
 int CPER_SECTION_TYPE_MCE ;
 int CPER_SEC_PRIMARY ;
 int CPER_SEC_REV ;
 void* CPER_SEV_FATAL ;
 int CPER_SIG_END ;
 struct mce* CPER_SIG_RECORD ;
 int CPER_SIG_SIZE ;
 int cper_next_record_id () ;
 int erst_write (TYPE_2__*) ;
 int memcpy (int *,struct mce*,int) ;
 int memset (struct cper_mce_record*,int ,int) ;

int apei_write_mce(struct mce *m)
{
 struct cper_mce_record rcd;

 memset(&rcd, 0, sizeof(rcd));
 memcpy(rcd.hdr.signature, CPER_SIG_RECORD, CPER_SIG_SIZE);
 rcd.hdr.revision = CPER_RECORD_REV;
 rcd.hdr.signature_end = CPER_SIG_END;
 rcd.hdr.section_count = 1;
 rcd.hdr.error_severity = CPER_SEV_FATAL;

 rcd.hdr.validation_bits = 0;
 rcd.hdr.record_length = sizeof(rcd);
 rcd.hdr.creator_id = CPER_CREATOR_MCE;
 rcd.hdr.notification_type = CPER_NOTIFY_MCE;
 rcd.hdr.record_id = cper_next_record_id();
 rcd.hdr.flags = CPER_HW_ERROR_FLAGS_PREVERR;

 rcd.sec_hdr.section_offset = (void *)&rcd.mce - (void *)&rcd;
 rcd.sec_hdr.section_length = sizeof(rcd.mce);
 rcd.sec_hdr.revision = CPER_SEC_REV;

 rcd.sec_hdr.validation_bits = 0;
 rcd.sec_hdr.flags = CPER_SEC_PRIMARY;
 rcd.sec_hdr.section_type = CPER_SECTION_TYPE_MCE;
 rcd.sec_hdr.section_severity = CPER_SEV_FATAL;

 memcpy(&rcd.mce, m, sizeof(*m));

 return erst_write(&rcd.hdr);
}
