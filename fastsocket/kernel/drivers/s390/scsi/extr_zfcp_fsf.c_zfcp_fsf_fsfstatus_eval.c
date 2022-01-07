
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zfcp_fsf_req {int status; TYPE_4__* adapter; TYPE_3__* qtcb; } ;
struct TYPE_8__ {TYPE_1__* ccw_device; } ;
struct TYPE_6__ {int fsf_status; int fsf_command; } ;
struct TYPE_7__ {TYPE_2__ header; } ;
struct TYPE_5__ {int dev; } ;




 int ZFCP_STATUS_FSFREQ_ERROR ;
 int dev_err (int *,char*,int ) ;
 scalar_t__ unlikely (int) ;
 int zfcp_erp_adapter_shutdown (TYPE_4__*,int ,char*,struct zfcp_fsf_req*) ;
 int zfcp_fsf_fsfstatus_qual_eval (struct zfcp_fsf_req*) ;

__attribute__((used)) static void zfcp_fsf_fsfstatus_eval(struct zfcp_fsf_req *req)
{
 if (unlikely(req->status & ZFCP_STATUS_FSFREQ_ERROR))
  return;

 switch (req->qtcb->header.fsf_status) {
 case 128:
  dev_err(&req->adapter->ccw_device->dev,
   "The FCP adapter does not recognize the command 0x%x\n",
   req->qtcb->header.fsf_command);
  zfcp_erp_adapter_shutdown(req->adapter, 0, "fsfse_1", req);
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 129:
  zfcp_fsf_fsfstatus_qual_eval(req);
  break;
 }
}
