
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlb_client_info {void* prev; void* next; } ;


 void* RLB_NULL_INDEX ;
 int memset (struct rlb_client_info*,int ,int) ;

__attribute__((used)) static void rlb_init_table_entry(struct rlb_client_info *entry)
{
 memset(entry, 0, sizeof(struct rlb_client_info));
 entry->next = RLB_NULL_INDEX;
 entry->prev = RLB_NULL_INDEX;
}
