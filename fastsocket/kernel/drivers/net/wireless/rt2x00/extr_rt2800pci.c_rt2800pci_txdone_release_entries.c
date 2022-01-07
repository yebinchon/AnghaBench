
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_entry {int status; int flags; } ;


 int ENTRY_DATA_STATUS_SET ;
 int rt2800_txdone_entry (struct queue_entry*,int ,int ) ;
 int rt2800pci_get_txwi (struct queue_entry*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool rt2800pci_txdone_release_entries(struct queue_entry *entry,
          void *data)
{
 if (test_bit(ENTRY_DATA_STATUS_SET, &entry->flags)) {
  rt2800_txdone_entry(entry, entry->status,
        rt2800pci_get_txwi(entry));
  return 0;
 }


 return 1;
}
