
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {int flags; } ;


 int ENTRY_DATA_IO_FAILED ;
 int TXDONE_FAILURE ;
 int TXDONE_UNKNOWN ;
 int rt2x00lib_txdone_noinfo (struct queue_entry*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void rt2x00usb_work_txdone_entry(struct queue_entry *entry)
{
 if (test_bit(ENTRY_DATA_IO_FAILED, &entry->flags))
  rt2x00lib_txdone_noinfo(entry, TXDONE_FAILURE);
 else
  rt2x00lib_txdone_noinfo(entry, TXDONE_UNKNOWN);
}
