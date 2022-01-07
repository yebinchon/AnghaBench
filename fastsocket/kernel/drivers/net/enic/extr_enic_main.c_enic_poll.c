
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct enic {int * intr; int * rq; int * cq; } ;


 unsigned int enic_cq_rq (struct enic*,int ) ;
 unsigned int enic_cq_wq (struct enic*,int ) ;
 unsigned int enic_legacy_io_intr () ;
 int enic_rq_alloc_buf ;
 int enic_rq_service ;
 int enic_wq_service ;
 int napi_complete (struct napi_struct*) ;
 struct enic* netdev_priv (struct net_device*) ;
 unsigned int vnic_cq_service (int *,unsigned int,int ,int *) ;
 int vnic_intr_return_credits (int *,unsigned int,int ,int ) ;
 int vnic_intr_unmask (int *) ;
 int vnic_rq_fill (int *,int ) ;

__attribute__((used)) static int enic_poll(struct napi_struct *napi, int budget)
{
 struct net_device *netdev = napi->dev;
 struct enic *enic = netdev_priv(netdev);
 unsigned int cq_rq = enic_cq_rq(enic, 0);
 unsigned int cq_wq = enic_cq_wq(enic, 0);
 unsigned int intr = enic_legacy_io_intr();
 unsigned int rq_work_to_do = budget;
 unsigned int wq_work_to_do = -1;
 unsigned int work_done, rq_work_done, wq_work_done;
 int err;




 rq_work_done = vnic_cq_service(&enic->cq[cq_rq],
  rq_work_to_do, enic_rq_service, ((void*)0));

 wq_work_done = vnic_cq_service(&enic->cq[cq_wq],
  wq_work_to_do, enic_wq_service, ((void*)0));






 work_done = rq_work_done + wq_work_done;

 if (work_done > 0)
  vnic_intr_return_credits(&enic->intr[intr],
   work_done,
   0 ,
   0 );

 err = vnic_rq_fill(&enic->rq[0], enic_rq_alloc_buf);





 if (err)
  rq_work_done = rq_work_to_do;

 if (rq_work_done < rq_work_to_do) {





  napi_complete(napi);
  vnic_intr_unmask(&enic->intr[intr]);
 }

 return rq_work_done;
}
