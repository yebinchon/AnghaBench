
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct zfcp_port {int wwnn; scalar_t__ wwpn; TYPE_8__* adapter; int d_id; int status; int handle; } ;
struct zfcp_fsf_req {int status; TYPE_6__* qtcb; TYPE_2__* adapter; struct zfcp_port* data; } ;
struct TYPE_12__ {int * word; } ;
struct fsf_qtcb_header {int fsf_status; int port_handle; TYPE_3__ fsf_status_qual; } ;
struct TYPE_18__ {int wwnn; scalar_t__ wwpn; } ;
struct fsf_plogi {TYPE_9__ serv_param; } ;
struct TYPE_17__ {TYPE_7__* ccw_device; } ;
struct TYPE_16__ {int dev; } ;
struct TYPE_13__ {int els1_length; scalar_t__ els; } ;
struct TYPE_14__ {TYPE_4__ support; } ;
struct TYPE_15__ {TYPE_5__ bottom; struct fsf_qtcb_header header; } ;
struct TYPE_11__ {TYPE_1__* ccw_device; } ;
struct TYPE_10__ {int dev; } ;






 int FSF_PLOGI_MIN_LEN ;





 int ZFCP_STATUS_COMMON_ACCESS_BOXED ;
 int ZFCP_STATUS_COMMON_ACCESS_DENIED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int ZFCP_STATUS_PORT_PHYS_OPEN ;
 int atomic_clear_mask (int,int *) ;
 int atomic_set_mask (int,int *) ;
 int dev_warn (int *,char*,unsigned long long,...) ;
 int zfcp_erp_port_failed (struct zfcp_port*,char*,struct zfcp_fsf_req*) ;
 int zfcp_fc_plogi_evaluate (struct zfcp_port*,struct fsf_plogi*) ;
 int zfcp_fsf_access_denied_port (struct zfcp_fsf_req*,struct zfcp_port*) ;
 int zfcp_port_put (struct zfcp_port*) ;

__attribute__((used)) static void zfcp_fsf_open_port_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_port *port = req->data;
 struct fsf_qtcb_header *header = &req->qtcb->header;
 struct fsf_plogi *plogi;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  goto out;

 switch (header->fsf_status) {
 case 132:
  break;
 case 136:
  zfcp_fsf_access_denied_port(req, port);
  break;
 case 133:
  dev_warn(&req->adapter->ccw_device->dev,
    "Not enough FCP adapter resources to open "
    "remote port 0x%016Lx\n",
    (unsigned long long)port->wwpn);
  zfcp_erp_port_failed(port, "fsoph_1", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 135:
  switch (header->fsf_status_qual.word[0]) {
  case 131:
  case 129:
  case 130:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
  }
  break;
 case 134:
  port->handle = header->port_handle;
  atomic_set_mask(ZFCP_STATUS_COMMON_OPEN |
    ZFCP_STATUS_PORT_PHYS_OPEN, &port->status);
  atomic_clear_mask(ZFCP_STATUS_COMMON_ACCESS_DENIED |
                    ZFCP_STATUS_COMMON_ACCESS_BOXED,
                    &port->status);
  plogi = (struct fsf_plogi *) req->qtcb->bottom.support.els;
  if (req->qtcb->bottom.support.els1_length >=
      FSF_PLOGI_MIN_LEN) {
   if (plogi->serv_param.wwpn != port->wwpn) {
    port->d_id = 0;
    dev_warn(&port->adapter->ccw_device->dev,
      "A port opened with WWPN 0x%016Lx "
      "returned data that identifies it as "
      "WWPN 0x%016Lx\n",
      (unsigned long long) port->wwpn,
      (unsigned long long)
       plogi->serv_param.wwpn);
   } else {
    port->wwnn = plogi->serv_param.wwnn;
    zfcp_fc_plogi_evaluate(port, plogi);
   }
  }
  break;
 case 128:
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 }

out:
 zfcp_port_put(port);
}
