
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mce {int dummy; } ;
struct TYPE_2__ {int creator_id; } ;
struct cper_mce_record {int mce; TYPE_1__ hdr; } ;
typedef int ssize_t ;
typedef int rcd ;


 scalar_t__ APEI_ERST_INVALID_RECORD_ID ;
 int CPER_CREATOR_MCE ;
 int ENOENT ;
 int erst_get_record_id_begin (int*) ;
 int erst_get_record_id_end () ;
 int erst_get_record_id_next (int*,scalar_t__*) ;
 int erst_read (scalar_t__,TYPE_1__*,int) ;
 int memcpy (struct mce*,int *,int) ;
 scalar_t__ uuid_le_cmp (int ,int ) ;

ssize_t apei_read_mce(struct mce *m, u64 *record_id)
{
 struct cper_mce_record rcd;
 int rc, pos;

 rc = erst_get_record_id_begin(&pos);
 if (rc)
  return rc;
retry:
 rc = erst_get_record_id_next(&pos, record_id);
 if (rc)
  goto out;

 if (*record_id == APEI_ERST_INVALID_RECORD_ID)
  goto out;
 rc = erst_read(*record_id, &rcd.hdr, sizeof(rcd));

 if (rc == -ENOENT)
  goto retry;
 else if (rc < 0)
  goto out;

 else if (rc != sizeof(rcd) ||
   uuid_le_cmp(rcd.hdr.creator_id, CPER_CREATOR_MCE))
  goto retry;
 memcpy(m, &rcd.mce, sizeof(*m));
 rc = sizeof(*m);
out:
 erst_get_record_id_end();

 return rc;
}
