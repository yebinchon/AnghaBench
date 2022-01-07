
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {int flags; } ;


 int ENTRY_OWNER_DEVICE_DATA ;
 int Q_INDEX ;
 int rt2x00queue_index_inc (struct queue_entry*,int ) ;
 int set_bit (int ,int *) ;

void rt2x00lib_dmastart(struct queue_entry *entry)
{
 set_bit(ENTRY_OWNER_DEVICE_DATA, &entry->flags);
 rt2x00queue_index_inc(entry, Q_INDEX);
}
