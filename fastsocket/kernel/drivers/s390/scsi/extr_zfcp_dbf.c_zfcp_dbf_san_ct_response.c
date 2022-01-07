
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_wka_port {int d_id; struct zfcp_adapter* adapter; } ;
struct zfcp_send_ct {TYPE_2__* resp; struct zfcp_wka_port* wka_port; } ;
struct zfcp_fsf_req {int seq_no; int req_id; scalar_t__ data; } ;
struct zfcp_dbf_san_record_ct_response {int len; int max_res_size; int vendor_unique; int expl; int reason_code; int revision; int cmd_rsp_code; } ;
struct TYPE_3__ {struct zfcp_dbf_san_record_ct_response ct_resp; } ;
struct zfcp_dbf_san_record {int d_id; int s_id; int fsf_seqno; int fsf_reqid; int tag; TYPE_1__ u; } ;
struct zfcp_dbf {int san_lock; int san; struct zfcp_dbf_san_record san_buf; } ;
struct zfcp_adapter {int scsi_host; struct zfcp_dbf* dbf; } ;
struct ct_hdr {int max_res_size; int vendor_unique; int reason_code_expl; int reason_code; int revision; int cmd_rsp_code; } ;
struct TYPE_4__ {scalar_t__ length; } ;


 int ZFCP_DBF_SAN_MAX_PAYLOAD ;
 int ZFCP_DBF_TAG_SIZE ;
 int debug_event (int ,int,struct zfcp_dbf_san_record*,int) ;
 int fc_host_port_id (int ) ;
 int memset (struct zfcp_dbf_san_record*,int ,int) ;
 int min (int,int ) ;
 struct ct_hdr* sg_virt (TYPE_2__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,char*,int ) ;
 int zfcp_dbf_hexdump (int ,struct zfcp_dbf_san_record*,int,int,void*,int ) ;

void zfcp_dbf_san_ct_response(struct zfcp_fsf_req *fsf_req)
{
 struct zfcp_send_ct *ct = (struct zfcp_send_ct *)fsf_req->data;
 struct zfcp_wka_port *wka_port = ct->wka_port;
 struct zfcp_adapter *adapter = wka_port->adapter;
 struct ct_hdr *hdr = sg_virt(ct->resp);
 struct zfcp_dbf *dbf = adapter->dbf;
 struct zfcp_dbf_san_record *r = &dbf->san_buf;
 struct zfcp_dbf_san_record_ct_response *rct = &r->u.ct_resp;
 int level = 3;
 unsigned long flags;

 spin_lock_irqsave(&dbf->san_lock, flags);
 memset(r, 0, sizeof(*r));
 strncpy(r->tag, "rctc", ZFCP_DBF_TAG_SIZE);
 r->fsf_reqid = fsf_req->req_id;
 r->fsf_seqno = fsf_req->seq_no;
 r->s_id = wka_port->d_id;
 r->d_id = fc_host_port_id(adapter->scsi_host);
 rct->cmd_rsp_code = hdr->cmd_rsp_code;
 rct->revision = hdr->revision;
 rct->reason_code = hdr->reason_code;
 rct->expl = hdr->reason_code_expl;
 rct->vendor_unique = hdr->vendor_unique;
 rct->max_res_size = hdr->max_res_size;
 rct->len = min((int)ct->resp->length - (int)sizeof(struct ct_hdr),
         ZFCP_DBF_SAN_MAX_PAYLOAD);
 debug_event(dbf->san, level, r, sizeof(*r));
 zfcp_dbf_hexdump(dbf->san, r, sizeof(*r), level,
    (void *)hdr + sizeof(struct ct_hdr), rct->len);
 spin_unlock_irqrestore(&dbf->san_lock, flags);
}
