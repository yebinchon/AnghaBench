
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct enic {int * intr; int * rq; int * cq; struct napi_struct* napi; } ;


 unsigned int enic_cq_rq (struct enic*,unsigned int) ;
 unsigned int enic_msix_rq_intr (struct enic*,unsigned int) ;
 int enic_rq_alloc_buf ;
 int enic_rq_service ;
 int napi_complete (struct napi_struct*) ;
 struct enic* netdev_priv (struct net_device*) ;
 unsigned int vnic_cq_service (int *,unsigned int,int ,int *) ;
 int vnic_intr_return_credits (int *,unsigned int,int ,int ) ;
 int vnic_intr_unmask (int *) ;
 int vnic_rq_fill (int *,int ) ;

__attribute__((used)) static int enic_poll_msix(struct napi_struct *napi, int budget)
{
 struct net_device *netdev = napi->dev;
 struct enic *enic = netdev_priv(netdev);
 unsigned int rq = (napi - &enic->napi[0]);
 unsigned int cq = enic_cq_rq(enic, rq);
 unsigned int intr = enic_msix_rq_intr(enic, rq);
 unsigned int work_to_do = budget;
 unsigned int work_done;
 int err;




 work_done = vnic_cq_service(&enic->cq[cq],
  work_to_do, enic_rq_service, ((void*)0));






 if (work_done > 0)
  vnic_intr_return_credits(&enic->intr[intr],
   work_done,
   0 ,
   0 );

 err = vnic_rq_fill(&enic->rq[rq], enic_rq_alloc_buf);





 if (err)
  work_done = work_to_do;

 if (work_done < work_to_do) {





  napi_complete(napi);
  vnic_intr_unmask(&enic->intr[intr]);
 }

 return work_done;
}
