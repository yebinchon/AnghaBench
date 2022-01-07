
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int dummy; } ;
struct ocrdma_pd {int dpp_enabled; struct ib_pd ibpd; int num_dpp_qp; struct ocrdma_dev* dev; } ;
struct TYPE_2__ {scalar_t__ dev_family; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;


 int ENOMEM ;
 struct ib_pd* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ OCRDMA_GEN2_FAMILY ;
 int OCRDMA_PD_MAX_DPP_ENABLED_QP ;
 struct ocrdma_dev* get_ocrdma_dev (struct ib_device*) ;
 int kfree (struct ocrdma_pd*) ;
 struct ocrdma_pd* kzalloc (int,int ) ;
 int ocrdma_copy_pd_uresp (struct ocrdma_pd*,struct ib_ucontext*,struct ib_udata*) ;
 int ocrdma_dealloc_pd (struct ib_pd*) ;
 int ocrdma_mbx_alloc_pd (struct ocrdma_dev*,struct ocrdma_pd*) ;

struct ib_pd *ocrdma_alloc_pd(struct ib_device *ibdev,
         struct ib_ucontext *context,
         struct ib_udata *udata)
{
 struct ocrdma_dev *dev = get_ocrdma_dev(ibdev);
 struct ocrdma_pd *pd;
 int status;

 pd = kzalloc(sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return ERR_PTR(-ENOMEM);
 pd->dev = dev;
 if (udata && context) {
  pd->dpp_enabled = (dev->nic_info.dev_family ==
     OCRDMA_GEN2_FAMILY) ? 1 : 0;
  pd->num_dpp_qp =
   pd->dpp_enabled ? OCRDMA_PD_MAX_DPP_ENABLED_QP : 0;
 }
 status = ocrdma_mbx_alloc_pd(dev, pd);
 if (status) {
  kfree(pd);
  return ERR_PTR(status);
 }

 if (udata && context) {
  status = ocrdma_copy_pd_uresp(pd, context, udata);
  if (status)
   goto err;
 }
 return &pd->ibpd;

err:
 ocrdma_dealloc_pd(&pd->ibpd);
 return ERR_PTR(status);
}
