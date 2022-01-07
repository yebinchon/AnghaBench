
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_entry {TYPE_1__* queue; int entry_idx; scalar_t__ last_action; int flags; } ;
struct TYPE_2__ {int qid; int rt2x00dev; } ;


 int ENTRY_DATA_STATUS_PENDING ;
 int jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int rt2x00_warn (int ,char*,int ,int ) ;
 int test_bit (int ,int *) ;
 int time_after (int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool rt2800usb_entry_txstatus_timeout(struct queue_entry *entry)
{
 bool tout;

 if (!test_bit(ENTRY_DATA_STATUS_PENDING, &entry->flags))
  return 0;

 tout = time_after(jiffies, entry->last_action + msecs_to_jiffies(100));
 if (unlikely(tout))
  rt2x00_warn(entry->queue->rt2x00dev,
       "TX status timeout for entry %d in queue %d\n",
       entry->entry_idx, entry->queue->qid);
 return tout;

}
