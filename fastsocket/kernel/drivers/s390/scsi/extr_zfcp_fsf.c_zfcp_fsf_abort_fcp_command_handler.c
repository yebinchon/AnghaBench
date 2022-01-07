
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union fsf_status_qual {int * word; } ;
struct zfcp_unit {TYPE_3__* port; } ;
struct zfcp_fsf_req {int status; TYPE_2__* qtcb; struct zfcp_unit* data; } ;
struct TYPE_8__ {int adapter; } ;
struct TYPE_6__ {int fsf_status; union fsf_status_qual fsf_status_qual; } ;
struct TYPE_7__ {TYPE_1__ header; } ;
 int ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED ;
 int ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int zfcp_erp_adapter_reopen (int ,int ,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_port_boxed (TYPE_3__*,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_port_reopen (TYPE_3__*,int ,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_unit_boxed (struct zfcp_unit*,char*,struct zfcp_fsf_req*) ;
 int zfcp_fc_test_link (TYPE_3__*) ;

__attribute__((used)) static void zfcp_fsf_abort_fcp_command_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_unit *unit = req->data;
 union fsf_status_qual *fsq = &req->qtcb->header.fsf_status_qual;

 if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
  return;

 switch (req->qtcb->header.fsf_status) {
 case 130:
  if (fsq->word[0] == fsq->word[1]) {
   zfcp_erp_adapter_reopen(unit->port->adapter, 0,
      "fsafch1", req);
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  }
  break;
 case 132:
  if (fsq->word[0] == fsq->word[1]) {
   zfcp_erp_port_reopen(unit->port, 0, "fsafch2", req);
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  }
  break;
 case 135:
  req->status |= ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED;
  break;
 case 131:
  zfcp_erp_port_boxed(unit->port, "fsafch3", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 133:
  zfcp_erp_unit_boxed(unit, "fsafch4", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
                break;
 case 136:
  switch (fsq->word[0]) {
  case 129:
   zfcp_fc_test_link(unit->port);

  case 128:
   req->status |= ZFCP_STATUS_FSFREQ_ERROR;
   break;
  }
  break;
 case 134:
  req->status |= ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED;
  break;
 }
}
