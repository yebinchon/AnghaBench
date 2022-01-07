
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int controlwq; int sc_list; int sc_lock; int inbound_lock; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int create_workqueue (char*) ;
 int kfree (struct vmbus_channel*) ;
 struct vmbus_channel* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct vmbus_channel *alloc_channel(void)
{
 struct vmbus_channel *channel;

 channel = kzalloc(sizeof(*channel), GFP_ATOMIC);
 if (!channel)
  return ((void*)0);

 spin_lock_init(&channel->inbound_lock);
 spin_lock_init(&channel->sc_lock);

 INIT_LIST_HEAD(&channel->sc_list);

 channel->controlwq = create_workqueue("hv_vmbus_ctl");
 if (!channel->controlwq) {
  kfree(channel);
  return ((void*)0);
 }

 return channel;
}
