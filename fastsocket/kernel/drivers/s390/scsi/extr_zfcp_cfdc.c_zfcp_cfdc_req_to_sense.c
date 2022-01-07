
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union fsf_status_qual {int dummy; } fsf_status_qual ;
struct zfcp_fsf_req {TYPE_4__* qtcb; } ;
struct zfcp_cfdc_data {int payloads; int fsf_status_qual; int fsf_status; } ;
struct TYPE_5__ {int els; } ;
struct TYPE_6__ {TYPE_1__ support; } ;
struct TYPE_7__ {int fsf_status_qual; int fsf_status; } ;
struct TYPE_8__ {TYPE_2__ bottom; TYPE_3__ header; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void zfcp_cfdc_req_to_sense(struct zfcp_cfdc_data *data,
       struct zfcp_fsf_req *req)
{
 data->fsf_status = req->qtcb->header.fsf_status;
 memcpy(&data->fsf_status_qual, &req->qtcb->header.fsf_status_qual,
        sizeof(union fsf_status_qual));
 memcpy(&data->payloads, &req->qtcb->bottom.support.els,
        sizeof(req->qtcb->bottom.support.els));
}
