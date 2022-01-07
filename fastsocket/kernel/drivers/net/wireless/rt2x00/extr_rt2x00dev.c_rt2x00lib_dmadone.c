
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {int flags; } ;


 int ENTRY_DATA_STATUS_PENDING ;
 int ENTRY_OWNER_DEVICE_DATA ;
 int Q_INDEX_DMA_DONE ;
 int clear_bit (int ,int *) ;
 int rt2x00queue_index_inc (struct queue_entry*,int ) ;
 int set_bit (int ,int *) ;

void rt2x00lib_dmadone(struct queue_entry *entry)
{
 set_bit(ENTRY_DATA_STATUS_PENDING, &entry->flags);
 clear_bit(ENTRY_OWNER_DEVICE_DATA, &entry->flags);
 rt2x00queue_index_inc(entry, Q_INDEX_DMA_DONE);
}
