
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slot {int dummy; } ;
struct event_info {int work; struct slot* p_slot; int event_type; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int interrupt_event_handler ;
 struct event_info* kmalloc (int,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int queue_interrupt_event(struct slot *p_slot, u32 event_type)
{
 struct event_info *info;

 info = kmalloc(sizeof(*info), GFP_ATOMIC);
 if (!info)
  return -ENOMEM;

 info->event_type = event_type;
 info->p_slot = p_slot;
 INIT_WORK(&info->work, interrupt_event_handler);

 schedule_work(&info->work);

 return 0;
}
