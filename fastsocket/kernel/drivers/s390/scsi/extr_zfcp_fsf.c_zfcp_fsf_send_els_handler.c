
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_send_els {int handler_data; int (* handler ) (int ) ;int ls_code; int status; struct zfcp_port* port; } ;
struct zfcp_port {int dummy; } ;
struct zfcp_fsf_req {int status; TYPE_1__* qtcb; struct zfcp_send_els* data; } ;
struct TYPE_4__ {int * word; } ;
struct fsf_qtcb_header {int fsf_status; TYPE_2__ fsf_status_qual; } ;
struct TYPE_3__ {struct fsf_qtcb_header header; } ;


 int EINVAL ;
 int ZFCP_LS_ADISC ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int stub1 (int ) ;
 int zfcp_dbf_san_els_response (struct zfcp_fsf_req*) ;
 int zfcp_fc_test_link (struct zfcp_port*) ;
 int zfcp_fsf_access_denied_port (struct zfcp_fsf_req*,struct zfcp_port*) ;
 int zfcp_fsf_class_not_supp (struct zfcp_fsf_req*) ;

__attribute__((used)) static void zfcp_fsf_send_els_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_send_els *send_els = req->data;
 struct zfcp_port *port = send_els->port;
 struct fsf_qtcb_header *header = &req->qtcb->header;

 send_els->status = -EINVAL;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  goto skip_fsfstatus;

 switch (header->fsf_status) {
 case 136:
  zfcp_dbf_san_els_response(req);
  send_els->status = 0;
  break;
 case 131:
  zfcp_fsf_class_not_supp(req);
  break;
 case 138:
  switch (header->fsf_status_qual.word[0]){
  case 130:
   if (port && (send_els->ls_code != ZFCP_LS_ADISC))
    zfcp_fc_test_link(port);

  case 128:
  case 129:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
  }
  break;
 case 137:
 case 135:
 case 134:
 case 133:
  break;
 case 139:
  if (port)
   zfcp_fsf_access_denied_port(req, port);
  break;
 case 132:


 default:
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 }
skip_fsfstatus:
 if (send_els->handler)
  send_els->handler(send_els->handler_data);
}
