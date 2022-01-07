
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int dummy; } ;
struct aer_rpc {int wait_release; int rpc_mutex; int dpc_handler; struct pcie_device* rpd; int e_lock; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int aer_isr ;
 int init_waitqueue_head (int *) ;
 struct aer_rpc* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int set_service_data (struct pcie_device*,struct aer_rpc*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct aer_rpc *aer_alloc_rpc(struct pcie_device *dev)
{
 struct aer_rpc *rpc;

 rpc = kzalloc(sizeof(struct aer_rpc), GFP_KERNEL);
 if (!rpc)
  return ((void*)0);


 spin_lock_init(&rpc->e_lock);

 rpc->rpd = dev;
 INIT_WORK(&rpc->dpc_handler, aer_isr);
 mutex_init(&rpc->rpc_mutex);
 init_waitqueue_head(&rpc->wait_release);


 set_service_data(dev, rpc);

 return rpc;
}
