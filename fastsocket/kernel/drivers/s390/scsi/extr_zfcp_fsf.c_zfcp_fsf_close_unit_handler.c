
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct zfcp_unit {int status; TYPE_4__* port; } ;
struct zfcp_fsf_req {int status; TYPE_3__* qtcb; struct zfcp_unit* data; } ;
struct TYPE_10__ {int adapter; } ;
struct TYPE_7__ {int * word; } ;
struct TYPE_8__ {int fsf_status; TYPE_1__ fsf_status_qual; } ;
struct TYPE_9__ {TYPE_2__ header; } ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int atomic_clear_mask (int ,int *) ;
 int zfcp_erp_adapter_reopen (int ,int ,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_port_boxed (TYPE_4__*,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_port_reopen (TYPE_4__*,int ,char*,struct zfcp_fsf_req*) ;
 int zfcp_fc_test_link (TYPE_4__*) ;

__attribute__((used)) static void zfcp_fsf_close_unit_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_unit *unit = req->data;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  return;

 switch (req->qtcb->header.fsf_status) {
 case 130:
  zfcp_erp_adapter_reopen(unit->port->adapter, 0, "fscuh_1", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 132:
  zfcp_erp_port_reopen(unit->port, 0, "fscuh_2", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 131:
  zfcp_erp_port_boxed(unit->port, "fscuh_3", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 134:
  switch (req->qtcb->header.fsf_status_qual.word[0]) {
  case 129:
   zfcp_fc_test_link(unit->port);

  case 128:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
  }
  break;
 case 133:
  atomic_clear_mask(ZFCP_STATUS_COMMON_OPEN, &unit->status);
  break;
 }
}
