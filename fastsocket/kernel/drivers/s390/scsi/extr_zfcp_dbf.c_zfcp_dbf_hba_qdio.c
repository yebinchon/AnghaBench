
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {unsigned int qdio_error; int sbal_index; int sbal_count; int scount; int fsf_reqid; } ;
struct TYPE_4__ {TYPE_1__ qdio; } ;
struct zfcp_dbf_hba_record {int total_size; int offset; int size; int tag; scalar_t__ data; TYPE_2__ u; } ;
struct zfcp_dbf_dump {int total_size; int offset; int size; int tag; scalar_t__ data; TYPE_2__ u; } ;
struct zfcp_dbf {int hba_lock; int hba; struct zfcp_dbf_hba_record hba_buf; } ;
struct qdio_buffer {int dummy; } ;


 int ZFCP_DBF_TAG_SIZE ;
 int debug_event (int ,int,struct zfcp_dbf_hba_record*,int) ;
 int memcpy (scalar_t__,void*,int) ;
 int memset (struct zfcp_dbf_hba_record*,int ,int) ;
 int min (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,char*,int ) ;

void zfcp_dbf_hba_qdio(struct zfcp_dbf *dbf, unsigned int qdio_error,
         int sbal_index, int sbal_count,
         u32 req_id, u8 scount, void *pl[])
{
 struct zfcp_dbf_hba_record *r = &dbf->hba_buf;
 unsigned long flags;
 int level = 0;

 spin_lock_irqsave(&dbf->hba_lock, flags);
 memset(r, 0, sizeof(*r));
 strncpy(r->tag, "qdio", ZFCP_DBF_TAG_SIZE);
 r->u.qdio.qdio_error = qdio_error;
 r->u.qdio.sbal_index = sbal_index;
 r->u.qdio.sbal_count = sbal_count;
 if (pl) {
  r->u.qdio.fsf_reqid = req_id;
  r->u.qdio.scount = scount;
 }
 debug_event(dbf->hba, level, r, sizeof(*r));
 if (pl) {
  struct zfcp_dbf_dump *dump = (struct zfcp_dbf_dump *)r;
  int pl_idx, sbal_off, dbf_off, sbal_tail, dbf_tail, chunk,
   dump_off, dump_chunk;




  pl_idx = 0;
  sbal_off = 0;
  sbal_tail = sizeof(struct qdio_buffer);
  dbf_off = 0;
  dbf_tail = sizeof(*r) - sizeof(*dump) ;
  dump_off = 0;
  dump_chunk = 0;
  memset(r, 0, sizeof(*r));
  strncpy(dump->tag, "dump", ZFCP_DBF_TAG_SIZE);
  dump->total_size = scount * sizeof(struct qdio_buffer);
  dump->offset = dump_off;
  for (;;) {
   chunk = min(sbal_tail, dbf_tail);
   if (pl_idx >= scount || !pl[pl_idx]) {
    if (dbf_off) {
     dump->size = dump_chunk;
     debug_event(dbf->hba, level, dump,
          dump->size + sizeof(*dump));
    }
    break;
   }
   memcpy(dump->data + dbf_off,
          pl[pl_idx] + sbal_off, chunk);
   sbal_off += chunk;
   sbal_tail -= chunk;
   dbf_off += chunk;
   dbf_tail -= chunk;
   dump_chunk += chunk;
   if (!sbal_tail) {
    pl_idx++;
    sbal_off = 0;
    sbal_tail = sizeof(struct qdio_buffer);
   }
   if (!dbf_tail) {
    dump->size = dump_chunk;
    debug_event(dbf->hba, level, dump,
         dump->size + sizeof(*dump));
    dump_off += dump->size;
    dump_chunk = 0;
    dbf_off = 0;
    dbf_tail = sizeof(*r) - sizeof(*dump);
    memset(r, 0, sizeof(*r));
    strncpy(dump->tag, "dump", ZFCP_DBF_TAG_SIZE);
    dump->total_size =
     scount * sizeof(struct qdio_buffer);
    dump->offset = dump_off;

   }
  }
 }
 spin_unlock_irqrestore(&dbf->hba_lock, flags);
}
