
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct zfcp_fsf_req {int status; TYPE_5__* adapter; TYPE_3__* qtcb; } ;
struct TYPE_11__ {TYPE_4__* ccw_device; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_7__ {int* word; } ;
struct TYPE_8__ {TYPE_1__ fsf_status_qual; } ;
struct TYPE_9__ {TYPE_2__ header; } ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int dev_err (int *,char*) ;
 int zfcp_erp_adapter_shutdown (TYPE_5__*,int ,char*,struct zfcp_fsf_req*) ;
 int zfcp_qdio_siosl (TYPE_5__*) ;

__attribute__((used)) static void zfcp_fsf_fsfstatus_qual_eval(struct zfcp_fsf_req *req)
{
 switch (req->qtcb->header.fsf_status_qual.word[0]) {
 case 132:
 case 131:
 case 129:
 case 128:
  return;
 case 133:
  break;
 case 130:
  dev_err(&req->adapter->ccw_device->dev,
   "The FCP adapter reported a problem "
   "that cannot be recovered\n");
  zfcp_qdio_siosl(req->adapter);
  zfcp_erp_adapter_shutdown(req->adapter, 0, "fsfsqe1", req);
  break;
 }

 req->status |= ZFCP_STATUS_FSFREQ_ERROR;
}
