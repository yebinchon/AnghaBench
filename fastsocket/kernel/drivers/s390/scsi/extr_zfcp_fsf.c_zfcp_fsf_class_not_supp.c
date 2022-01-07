
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_fsf_req {int status; TYPE_2__* adapter; } ;
struct TYPE_4__ {TYPE_1__* ccw_device; } ;
struct TYPE_3__ {int dev; } ;


 int ZFCP_STATUS_FSFREQ_ERROR ;
 int dev_err (int *,char*) ;
 int zfcp_erp_adapter_shutdown (TYPE_2__*,int ,char*,struct zfcp_fsf_req*) ;

__attribute__((used)) static void zfcp_fsf_class_not_supp(struct zfcp_fsf_req *req)
{
 dev_err(&req->adapter->ccw_device->dev, "FCP device not "
  "operational because of an unsupported FC class\n");
 zfcp_erp_adapter_shutdown(req->adapter, 0, "fscns_1", req);
 req->status |= ZFCP_STATUS_FSFREQ_ERROR;
}
