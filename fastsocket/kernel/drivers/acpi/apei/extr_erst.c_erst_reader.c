
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct pstore_info {int dummy; } ;
struct TYPE_5__ {int validation_bits; int timestamp; int creator_id; } ;
struct TYPE_4__ {int section_type; } ;
struct cper_pstore_record {TYPE_2__ hdr; TYPE_1__ sec_hdr; int data; } ;
typedef int ssize_t ;
typedef enum pstore_type_id { ____Placeholder_pstore_type_id } pstore_type_id ;
struct TYPE_6__ {int bufsize; } ;


 scalar_t__ APEI_ERST_INVALID_RECORD_ID ;
 int CPER_CREATOR_PSTORE ;
 int CPER_SECTION_TYPE_DMESG ;
 int CPER_SECTION_TYPE_MCE ;
 int CPER_VALID_TIMESTAMP ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PSTORE_TYPE_DMESG ;
 int PSTORE_TYPE_MCE ;
 int PSTORE_TYPE_UNKNOWN ;
 scalar_t__ erst_disable ;
 int erst_get_record_id_next (int *,scalar_t__*) ;
 TYPE_3__ erst_info ;
 int erst_read (scalar_t__,TYPE_2__*,size_t) ;
 int kfree (struct cper_pstore_record*) ;
 void* kmalloc (int,int ) ;
 int memcpy (char*,int ,int) ;
 int reader_pos ;
 scalar_t__ uuid_le_cmp (int ,int ) ;

__attribute__((used)) static ssize_t erst_reader(u64 *id, enum pstore_type_id *type, int *count,
      struct timespec *time, char **buf,
      struct pstore_info *psi)
{
 int rc;
 ssize_t len = 0;
 u64 record_id;
 struct cper_pstore_record *rcd;
 size_t rcd_len = sizeof(*rcd) + erst_info.bufsize;

 if (erst_disable)
  return -ENODEV;

 rcd = kmalloc(rcd_len, GFP_KERNEL);
 if (!rcd) {
  rc = -ENOMEM;
  goto out;
 }
skip:
 rc = erst_get_record_id_next(&reader_pos, &record_id);
 if (rc)
  goto out;


 if (record_id == APEI_ERST_INVALID_RECORD_ID) {
  rc = -EINVAL;
  goto out;
 }

 len = erst_read(record_id, &rcd->hdr, rcd_len);

 if (len == -ENOENT)
  goto skip;
 else if (len < sizeof(*rcd)) {
  rc = -EIO;
  goto out;
 }
 if (uuid_le_cmp(rcd->hdr.creator_id, CPER_CREATOR_PSTORE) != 0)
  goto skip;

 *buf = kmalloc(len, GFP_KERNEL);
 if (*buf == ((void*)0)) {
  rc = -ENOMEM;
  goto out;
 }
 memcpy(*buf, rcd->data, len - sizeof(*rcd));
 *id = record_id;
 if (uuid_le_cmp(rcd->sec_hdr.section_type,
   CPER_SECTION_TYPE_DMESG) == 0)
  *type = PSTORE_TYPE_DMESG;
 else if (uuid_le_cmp(rcd->sec_hdr.section_type,
        CPER_SECTION_TYPE_MCE) == 0)
  *type = PSTORE_TYPE_MCE;
 else
  *type = PSTORE_TYPE_UNKNOWN;

 if (rcd->hdr.validation_bits & CPER_VALID_TIMESTAMP)
  time->tv_sec = rcd->hdr.timestamp;
 else
  time->tv_sec = 0;
 time->tv_nsec = 0;

out:
 kfree(rcd);
 return (rc < 0) ? rc : (len - sizeof(*rcd));
}
