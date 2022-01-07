
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_device {int state; int req_list; int request_lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RNDIS_DEV_UNINITIALIZED ;
 struct rndis_device* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct rndis_device *get_rndis_device(void)
{
 struct rndis_device *device;

 device = kzalloc(sizeof(struct rndis_device), GFP_KERNEL);
 if (!device)
  return ((void*)0);

 spin_lock_init(&device->request_lock);

 INIT_LIST_HEAD(&device->req_list);

 device->state = RNDIS_DEV_UNINITIALIZED;

 return device;
}
