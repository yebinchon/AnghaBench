
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc64_msiq_ops {int (* msiq_build_irq ) (struct pci_pbm_info*,unsigned long,unsigned long) ;} ;
struct pci_pbm_info {int numa_node; unsigned long msiq_first; int * msiq_irq_cookies; } ;
typedef int cpumask_t ;


 int * cpumask_of_node (int) ;
 int irq_set_affinity (int,int *) ;
 int request_irq (int,int ,int ,char*,int *) ;
 int sparc64_msiq_interrupt ;
 int stub1 (struct pci_pbm_info*,unsigned long,unsigned long) ;

__attribute__((used)) static int bringup_one_msi_queue(struct pci_pbm_info *pbm,
     const struct sparc64_msiq_ops *ops,
     unsigned long msiqid,
     unsigned long devino)
{
 int irq = ops->msiq_build_irq(pbm, msiqid, devino);
 int err, nid;

 if (irq < 0)
  return irq;

 nid = pbm->numa_node;
 if (nid != -1) {
  cpumask_t numa_mask = *cpumask_of_node(nid);

  irq_set_affinity(irq, &numa_mask);
 }
 err = request_irq(irq, sparc64_msiq_interrupt, 0,
     "MSIQ",
     &pbm->msiq_irq_cookies[msiqid - pbm->msiq_first]);
 if (err)
  return err;

 return 0;
}
