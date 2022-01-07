
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct zfcp_unit {TYPE_7__* port; scalar_t__ fcp_lun; } ;
struct zfcp_fsf_req {int status; struct zfcp_unit* unit; TYPE_5__* qtcb; TYPE_2__* adapter; struct zfcp_unit* data; } ;
struct TYPE_15__ {int * word; } ;
struct fsf_qtcb_header {int fsf_status; TYPE_6__ fsf_status_qual; } ;
struct TYPE_16__ {int adapter; scalar_t__ wwpn; } ;
struct TYPE_12__ {int fcp_cmnd_length; int data_direction; } ;
struct TYPE_13__ {TYPE_3__ io; } ;
struct TYPE_14__ {TYPE_4__ bottom; struct fsf_qtcb_header header; } ;
struct TYPE_11__ {TYPE_1__* ccw_device; } ;
struct TYPE_10__ {int dev; } ;
 int FSF_SQ_INVOKE_LINK_TEST_PROCEDURE ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT ;
 int dev_err (int *,char*,int ,unsigned long long,unsigned long long) ;
 scalar_t__ unlikely (int) ;
 int zfcp_erp_adapter_reopen (int ,int ,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_adapter_shutdown (int ,int ,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_port_boxed (TYPE_7__*,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_port_reopen (TYPE_7__*,int ,char*,struct zfcp_fsf_req*) ;
 int zfcp_erp_unit_boxed (struct zfcp_unit*,char*,struct zfcp_fsf_req*) ;
 int zfcp_fc_test_link (TYPE_7__*) ;
 int zfcp_fsf_access_denied_unit (struct zfcp_fsf_req*,struct zfcp_unit*) ;
 int zfcp_fsf_class_not_supp (struct zfcp_fsf_req*) ;
 int zfcp_fsf_send_fcp_command_task_handler (struct zfcp_fsf_req*) ;
 int zfcp_fsf_send_fcp_ctm_handler (struct zfcp_fsf_req*) ;
 int zfcp_unit_put (struct zfcp_unit*) ;

__attribute__((used)) static void zfcp_fsf_send_fcp_command_handler(struct zfcp_fsf_req *req)
{
 struct zfcp_unit *unit;
 struct fsf_qtcb_header *header = &req->qtcb->header;

 if (unlikely(req->status & ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT))
  unit = req->data;
 else
  unit = req->unit;

 if (unlikely(req->status & ZFCP_STATUS_FSFREQ_ERROR))
  goto skip_fsfstatus;

 switch (header->fsf_status) {
 case 133:
 case 129:
  zfcp_erp_adapter_reopen(unit->port->adapter, 0, "fssfch1", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 134:
 case 131:
  zfcp_erp_port_reopen(unit->port, 0, "fssfch2", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 128:
  zfcp_fsf_class_not_supp(req);
  break;
 case 138:
  zfcp_fsf_access_denied_unit(req, unit);
  break;
 case 135:
  dev_err(&req->adapter->ccw_device->dev,
   "Incorrect direction %d, unit 0x%016Lx on port "
   "0x%016Lx closed\n",
   req->qtcb->bottom.io.data_direction,
   (unsigned long long)unit->fcp_lun,
   (unsigned long long)unit->port->wwpn);
  zfcp_erp_adapter_shutdown(unit->port->adapter, 0, "fssfch3",
       req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 136:
  dev_err(&req->adapter->ccw_device->dev,
   "Incorrect CDB length %d, unit 0x%016Lx on "
   "port 0x%016Lx closed\n",
   req->qtcb->bottom.io.fcp_cmnd_length,
   (unsigned long long)unit->fcp_lun,
   (unsigned long long)unit->port->wwpn);
  zfcp_erp_adapter_shutdown(unit->port->adapter, 0, "fssfch4",
       req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 130:
  zfcp_erp_port_boxed(unit->port, "fssfch5", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 132:
  zfcp_erp_unit_boxed(unit, "fssfch6", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 137:
  if (header->fsf_status_qual.word[0] ==
      FSF_SQ_INVOKE_LINK_TEST_PROCEDURE)
   zfcp_fc_test_link(unit->port);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 }
skip_fsfstatus:
 if (req->status & ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT)
  zfcp_fsf_send_fcp_ctm_handler(req);
 else {
  zfcp_fsf_send_fcp_command_task_handler(req);
  req->unit = ((void*)0);
  zfcp_unit_put(unit);
 }
}
