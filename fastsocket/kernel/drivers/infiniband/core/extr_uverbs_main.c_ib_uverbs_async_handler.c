
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct list_head {int dummy; } ;
struct ib_uverbs_file {TYPE_3__* async_file; } ;
struct TYPE_4__ {void* event_type; void* element; } ;
struct TYPE_5__ {TYPE_1__ async; } ;
struct ib_uverbs_event {int obj_list; int list; int * counter; TYPE_2__ desc; } ;
typedef void* __u64 ;
struct TYPE_6__ {int async_queue; int poll_wait; int lock; struct list_head event_list; scalar_t__ is_closed; } ;


 int GFP_ATOMIC ;
 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 struct ib_uverbs_event* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ib_uverbs_async_handler(struct ib_uverbs_file *file,
        __u64 element, __u64 event,
        struct list_head *obj_list,
        u32 *counter)
{
 struct ib_uverbs_event *entry;
 unsigned long flags;

 spin_lock_irqsave(&file->async_file->lock, flags);
 if (file->async_file->is_closed) {
  spin_unlock_irqrestore(&file->async_file->lock, flags);
  return;
 }

 entry = kmalloc(sizeof *entry, GFP_ATOMIC);
 if (!entry) {
  spin_unlock_irqrestore(&file->async_file->lock, flags);
  return;
 }

 entry->desc.async.element = element;
 entry->desc.async.event_type = event;
 entry->counter = counter;

 list_add_tail(&entry->list, &file->async_file->event_list);
 if (obj_list)
  list_add_tail(&entry->obj_list, obj_list);
 spin_unlock_irqrestore(&file->async_file->lock, flags);

 wake_up_interruptible(&file->async_file->poll_wait);
 kill_fasync(&file->async_file->async_queue, SIGIO, POLL_IN);
}
