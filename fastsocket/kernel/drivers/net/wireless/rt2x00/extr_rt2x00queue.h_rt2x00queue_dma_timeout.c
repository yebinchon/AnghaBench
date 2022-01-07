
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {scalar_t__ last_action; int flags; } ;


 int ENTRY_OWNER_DEVICE_DATA ;
 int jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int test_bit (int ,int *) ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static inline int rt2x00queue_dma_timeout(struct queue_entry *entry)
{
 if (!test_bit(ENTRY_OWNER_DEVICE_DATA, &entry->flags))
  return 0;
 return time_after(jiffies, entry->last_action + msecs_to_jiffies(100));
}
