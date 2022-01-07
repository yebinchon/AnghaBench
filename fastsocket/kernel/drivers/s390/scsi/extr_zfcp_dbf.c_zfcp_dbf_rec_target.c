
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct TYPE_3__ {unsigned long ref; void* erp_count; void* fcp_lun; int d_id; void* wwpn; void* status; } ;
struct TYPE_4__ {TYPE_1__ target; } ;
struct zfcp_dbf_rec_record {TYPE_2__ u; int id2; int id; } ;
struct zfcp_dbf {int rec_lock; int rec; struct zfcp_dbf_rec_record rec_buf; } ;
typedef int atomic_t ;


 int ZFCP_DBF_ID_SIZE ;
 int ZFCP_REC_DBF_ID_TARGET ;
 void* atomic_read (int *) ;
 int debug_event (int ,int,struct zfcp_dbf_rec_record*,int) ;
 int memcpy (int ,char*,int ) ;
 int memset (struct zfcp_dbf_rec_record*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void zfcp_dbf_rec_target(char *id2, void *ref, struct zfcp_dbf *dbf,
    atomic_t *status, atomic_t *erp_count, u64 wwpn,
    u32 d_id, u64 fcp_lun)
{
 struct zfcp_dbf_rec_record *r = &dbf->rec_buf;
 unsigned long flags;

 spin_lock_irqsave(&dbf->rec_lock, flags);
 memset(r, 0, sizeof(*r));
 r->id = ZFCP_REC_DBF_ID_TARGET;
 memcpy(r->id2, id2, ZFCP_DBF_ID_SIZE);
 r->u.target.ref = (unsigned long)ref;
 r->u.target.status = atomic_read(status);
 r->u.target.wwpn = wwpn;
 r->u.target.d_id = d_id;
 r->u.target.fcp_lun = fcp_lun;
 r->u.target.erp_count = atomic_read(erp_count);
 debug_event(dbf->rec, 3, r, sizeof(*r));
 spin_unlock_irqrestore(&dbf->rec_lock, flags);
}
