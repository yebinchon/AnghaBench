
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int irq; } ;
struct aer_rpc {scalar_t__ prod_idx; scalar_t__ cons_idx; int wait_release; scalar_t__ isr; } ;


 int aer_disable_rootport (struct aer_rpc*) ;
 int free_irq (int ,struct pcie_device*) ;
 struct aer_rpc* get_service_data (struct pcie_device*) ;
 int kfree (struct aer_rpc*) ;
 int set_service_data (struct pcie_device*,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void aer_remove(struct pcie_device *dev)
{
 struct aer_rpc *rpc = get_service_data(dev);

 if (rpc) {

  if (rpc->isr)
   free_irq(dev->irq, dev);

  wait_event(rpc->wait_release, rpc->prod_idx == rpc->cons_idx);

  aer_disable_rootport(rpc);
  kfree(rpc);
  set_service_data(dev, ((void*)0));
 }
}
