
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot {int work; int lock; struct controller* ctrl; } ;
struct controller {struct slot* slot; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 struct slot* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pciehp_queue_pushbutton_work ;

__attribute__((used)) static int pcie_init_slot(struct controller *ctrl)
{
 struct slot *slot;

 slot = kzalloc(sizeof(*slot), GFP_KERNEL);
 if (!slot)
  return -ENOMEM;

 slot->ctrl = ctrl;
 mutex_init(&slot->lock);
 INIT_DELAYED_WORK(&slot->work, pciehp_queue_pushbutton_work);
 ctrl->slot = slot;
 return 0;
}
