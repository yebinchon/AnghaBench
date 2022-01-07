
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef union fsf_status_qual {int dummy; } fsf_status_qual ;
typedef union fsf_status_qual fsf_prot_status_qual ;
struct zfcp_unit {int fcp_lun; struct zfcp_port* port; } ;
struct zfcp_send_els {int ls_code; } ;
struct zfcp_port {int wwpn; int d_id; } ;
struct TYPE_18__ {int sbal_response; int sbal_last; int sbal_first; } ;
struct zfcp_fsf_req {int fsf_command; int status; scalar_t__ data; scalar_t__ erp_action; int * pool; TYPE_3__ queue_req; int issued; int seq_no; int req_id; struct fsf_qtcb* qtcb; } ;
struct TYPE_13__ {int ls_code; int d_id; } ;
struct TYPE_22__ {int lun_handle; int port_handle; int fcp_lun; int wwpn; } ;
struct TYPE_21__ {int port_handle; int d_id; int wwpn; } ;
struct TYPE_19__ {unsigned long cmnd; int data_dir; int serial; } ;
struct TYPE_14__ {TYPE_10__ els; TYPE_7__ unit; TYPE_6__ port; TYPE_4__ fcp; } ;
struct zfcp_dbf_hba_record_response {int fsf_command; int fsf_req_status; unsigned long erp_action; TYPE_11__ u; int pool; int sbal_response; int sbal_last; int sbal_first; int fsf_status_qual; int fsf_prot_status_qual; int fsf_status; int fsf_prot_status; int fsf_issued; int fsf_seqno; int fsf_reqid; } ;
struct TYPE_16__ {struct zfcp_dbf_hba_record_response response; } ;
struct zfcp_dbf_hba_record {int tag2; int tag; TYPE_1__ u; } ;
struct zfcp_dbf {int hba_lock; int hba; struct zfcp_dbf_hba_record hba_buf; } ;
struct scsi_cmnd {int serial_number; } ;
struct TYPE_15__ {int log_start; int log_length; int lun_handle; int port_handle; int fsf_status; union fsf_status_qual fsf_status_qual; } ;
struct TYPE_23__ {int d_id; } ;
struct TYPE_20__ {int data_direction; } ;
struct TYPE_24__ {TYPE_8__ support; TYPE_5__ io; } ;
struct TYPE_17__ {int prot_status; union fsf_status_qual prot_status_qual; } ;
struct fsf_qtcb {TYPE_12__ header; TYPE_9__ bottom; TYPE_2__ prefix; } ;


 int FSF_PROT_STATUS_QUAL_SIZE ;
 int FSF_STATUS_QUALIFIER_SIZE ;
 int ZFCP_DBF_TAG_SIZE ;
 int ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT ;
 int debug_event (int ,int,struct zfcp_dbf_hba_record*,int) ;
 int memcpy (int ,union fsf_status_qual*,int ) ;
 int memset (struct zfcp_dbf_hba_record*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,char const*,int ) ;
 int zfcp_dbf_hexdump (int ,struct zfcp_dbf_hba_record*,int,int,char*,int) ;

void _zfcp_dbf_hba_fsf_response(const char *tag2, int level,
    struct zfcp_fsf_req *fsf_req,
    struct zfcp_dbf *dbf)
{
 struct fsf_qtcb *qtcb = fsf_req->qtcb;
 union fsf_prot_status_qual *prot_status_qual =
     &qtcb->prefix.prot_status_qual;
 union fsf_status_qual *fsf_status_qual = &qtcb->header.fsf_status_qual;
 struct scsi_cmnd *scsi_cmnd;
 struct zfcp_port *port;
 struct zfcp_unit *unit;
 struct zfcp_send_els *send_els;
 struct zfcp_dbf_hba_record *rec = &dbf->hba_buf;
 struct zfcp_dbf_hba_record_response *response = &rec->u.response;
 unsigned long flags;

 spin_lock_irqsave(&dbf->hba_lock, flags);
 memset(rec, 0, sizeof(*rec));
 strncpy(rec->tag, "resp", ZFCP_DBF_TAG_SIZE);
 strncpy(rec->tag2, tag2, ZFCP_DBF_TAG_SIZE);

 response->fsf_command = fsf_req->fsf_command;
 response->fsf_reqid = fsf_req->req_id;
 response->fsf_seqno = fsf_req->seq_no;
 response->fsf_issued = fsf_req->issued;
 response->fsf_prot_status = qtcb->prefix.prot_status;
 response->fsf_status = qtcb->header.fsf_status;
 memcpy(response->fsf_prot_status_qual,
        prot_status_qual, FSF_PROT_STATUS_QUAL_SIZE);
 memcpy(response->fsf_status_qual,
        fsf_status_qual, FSF_STATUS_QUALIFIER_SIZE);
 response->fsf_req_status = fsf_req->status;
 response->sbal_first = fsf_req->queue_req.sbal_first;
 response->sbal_last = fsf_req->queue_req.sbal_last;
 response->sbal_response = fsf_req->queue_req.sbal_response;
 response->pool = fsf_req->pool != ((void*)0);
 response->erp_action = (unsigned long)fsf_req->erp_action;

 switch (fsf_req->fsf_command) {
 case 133:
  if (fsf_req->status & ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT)
   break;
  scsi_cmnd = (struct scsi_cmnd *)fsf_req->data;
  if (scsi_cmnd) {
   response->u.fcp.cmnd = (unsigned long)scsi_cmnd;
   response->u.fcp.serial = scsi_cmnd->serial_number;
   response->u.fcp.data_dir =
    qtcb->bottom.io.data_direction;
  }
  break;

 case 131:
 case 137:
 case 138:
  port = (struct zfcp_port *)fsf_req->data;
  response->u.port.wwpn = port->wwpn;
  response->u.port.d_id = port->d_id;
  response->u.port.port_handle = qtcb->header.port_handle;
  break;

 case 132:
 case 139:
  unit = (struct zfcp_unit *)fsf_req->data;
  port = unit->port;
  response->u.unit.wwpn = port->wwpn;
  response->u.unit.fcp_lun = unit->fcp_lun;
  response->u.unit.port_handle = qtcb->header.port_handle;
  response->u.unit.lun_handle = qtcb->header.lun_handle;
  break;

 case 130:
  send_els = (struct zfcp_send_els *)fsf_req->data;
  response->u.els.d_id = qtcb->bottom.support.d_id;
  response->u.els.ls_code = send_els->ls_code >> 24;
  break;

 case 140:
 case 129:
 case 135:
 case 134:
 case 136:
 case 128:
  break;
 }

 debug_event(dbf->hba, level, rec, sizeof(*rec));


 if (fsf_req->fsf_command != 133) {

  char *buf = (char *)qtcb + qtcb->header.log_start;
  int len = qtcb->header.log_length;
  for (; len && !buf[len - 1]; len--);
  zfcp_dbf_hexdump(dbf->hba, rec, sizeof(*rec), level, buf,
     len);
 }

 spin_unlock_irqrestore(&dbf->hba_lock, flags);
}
