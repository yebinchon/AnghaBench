
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct zfcp_fsf_req {int seq_no; int req_id; struct zfcp_adapter* adapter; } ;
struct TYPE_3__ {int ls_code; } ;
struct TYPE_4__ {TYPE_1__ els; } ;
struct zfcp_dbf_san_record {TYPE_2__ u; void* d_id; void* s_id; int fsf_seqno; int fsf_reqid; int tag; } ;
struct zfcp_dbf {int san_lock; int san; struct zfcp_dbf_san_record san_buf; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; } ;


 int ZFCP_DBF_SAN_MAX_PAYLOAD ;
 int ZFCP_DBF_TAG_SIZE ;
 int debug_event (int ,int,struct zfcp_dbf_san_record*,int) ;
 int memset (struct zfcp_dbf_san_record*,int ,int) ;
 int min (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,char const*,int ) ;
 int zfcp_dbf_hexdump (int ,struct zfcp_dbf_san_record*,int,int,void*,int ) ;

__attribute__((used)) static void zfcp_dbf_san_els(const char *tag, int level,
        struct zfcp_fsf_req *fsf_req, u32 s_id, u32 d_id,
        u8 ls_code, void *buffer, int buflen)
{
 struct zfcp_adapter *adapter = fsf_req->adapter;
 struct zfcp_dbf *dbf = adapter->dbf;
 struct zfcp_dbf_san_record *rec = &dbf->san_buf;
 unsigned long flags;

 spin_lock_irqsave(&dbf->san_lock, flags);
 memset(rec, 0, sizeof(*rec));
 strncpy(rec->tag, tag, ZFCP_DBF_TAG_SIZE);
 rec->fsf_reqid = fsf_req->req_id;
 rec->fsf_seqno = fsf_req->seq_no;
 rec->s_id = s_id;
 rec->d_id = d_id;
 rec->u.els.ls_code = ls_code;
 debug_event(dbf->san, level, rec, sizeof(*rec));
 zfcp_dbf_hexdump(dbf->san, rec, sizeof(*rec), level,
    buffer, min(buflen, ZFCP_DBF_SAN_MAX_PAYLOAD));
 spin_unlock_irqrestore(&dbf->san_lock, flags);
}
