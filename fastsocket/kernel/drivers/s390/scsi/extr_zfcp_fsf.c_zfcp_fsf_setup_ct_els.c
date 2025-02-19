
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_fsf_req {TYPE_2__* qtcb; } ;
struct scatterlist {int dummy; } ;
struct TYPE_4__ {unsigned int timeout; int service_class; } ;
struct TYPE_6__ {TYPE_1__ support; } ;
struct TYPE_5__ {TYPE_3__ bottom; } ;


 int FSF_CLASS_3 ;
 unsigned int HZ ;
 int zfcp_fsf_setup_ct_els_sbals (struct zfcp_fsf_req*,struct scatterlist*,struct scatterlist*,int) ;
 int zfcp_fsf_start_timer (struct zfcp_fsf_req*,unsigned int) ;

__attribute__((used)) static int zfcp_fsf_setup_ct_els(struct zfcp_fsf_req *req,
     struct scatterlist *sg_req,
     struct scatterlist *sg_resp,
     int max_sbals, unsigned int timeout)
{
 int ret;

 ret = zfcp_fsf_setup_ct_els_sbals(req, sg_req, sg_resp, max_sbals);
 if (ret)
  return ret;


 req->qtcb->bottom.support.service_class = FSF_CLASS_3;
 if (timeout > 255)
  timeout = 255;
 req->qtcb->bottom.support.timeout = timeout;
 zfcp_fsf_start_timer(req, (timeout + 10) * HZ);

 return 0;
}
