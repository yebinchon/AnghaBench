
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_fsf_req {struct fsf_status_read_buffer* data; } ;
struct TYPE_4__ {int berr; } ;
struct zfcp_dbf_hba_record {TYPE_2__ u; int tag; } ;
struct zfcp_dbf {int hba_lock; int hba; struct zfcp_dbf_hba_record hba_buf; } ;
struct fsf_bit_error_payload {int dummy; } ;
struct TYPE_3__ {struct fsf_bit_error_payload bit_error; } ;
struct fsf_status_read_buffer {TYPE_1__ payload; } ;


 int ZFCP_DBF_TAG_SIZE ;
 int debug_event (int ,int ,struct zfcp_dbf_hba_record*,int) ;
 int memcpy (int *,struct fsf_bit_error_payload*,int) ;
 int memset (struct zfcp_dbf_hba_record*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,char*,int ) ;

void zfcp_dbf_hba_berr(struct zfcp_dbf *dbf, struct zfcp_fsf_req *req)
{
 struct zfcp_dbf_hba_record *r = &dbf->hba_buf;
 struct fsf_status_read_buffer *sr_buf = req->data;
 struct fsf_bit_error_payload *err = &sr_buf->payload.bit_error;
 unsigned long flags;

 spin_lock_irqsave(&dbf->hba_lock, flags);
 memset(r, 0, sizeof(*r));
 strncpy(r->tag, "berr", ZFCP_DBF_TAG_SIZE);
 memcpy(&r->u.berr, err, sizeof(struct fsf_bit_error_payload));
 debug_event(dbf->hba, 0, r, sizeof(*r));
 spin_unlock_irqrestore(&dbf->hba_lock, flags);
}
