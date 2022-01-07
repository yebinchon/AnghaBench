
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct queue_entry {int flags; int status; } ;


 int ENTRY_DATA_STATUS_SET ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool rt2800pci_txdone_match_first(struct queue_entry *entry, void *data)
{
 u32 status = *(u32 *)data;





 if (!test_bit(ENTRY_DATA_STATUS_SET, &entry->flags)) {




  entry->status = status;
  set_bit(ENTRY_DATA_STATUS_SET, &entry->flags);
  return 1;
 }


 return 0;
}
