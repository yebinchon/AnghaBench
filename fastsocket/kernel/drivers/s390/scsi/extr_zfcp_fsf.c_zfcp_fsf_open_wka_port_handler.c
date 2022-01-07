
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_wka_port {int completion_wq; void* status; int handle; int d_id; } ;
struct zfcp_fsf_req {int status; TYPE_3__* adapter; TYPE_1__* qtcb; struct zfcp_wka_port* data; } ;
struct fsf_qtcb_header {int fsf_status; int port_handle; } ;
struct TYPE_6__ {TYPE_2__* ccw_device; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct fsf_qtcb_header header; } ;







 int ZFCP_STATUS_FSFREQ_ERROR ;
 void* ZFCP_WKA_PORT_OFFLINE ;
 void* ZFCP_WKA_PORT_ONLINE ;
 int dev_warn (int *,char*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void zfcp_fsf_open_wka_port_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_wka_port *wka_port = req->data;
 struct fsf_qtcb_header *header = &req->qtcb->header;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR) {
  wka_port->status = ZFCP_WKA_PORT_OFFLINE;
  goto out;
 }

 switch (header->fsf_status) {
 case 129:
  dev_warn(&req->adapter->ccw_device->dev,
    "Opening WKA port 0x%x failed\n", wka_port->d_id);

 case 131:
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;

 case 132:
  wka_port->status = ZFCP_WKA_PORT_OFFLINE;
  break;
 case 130:
  wka_port->handle = header->port_handle;

 case 128:
  wka_port->status = ZFCP_WKA_PORT_ONLINE;
 }
out:
 wake_up(&wka_port->completion_wq);
}
