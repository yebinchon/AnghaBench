
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* active_entries; size_t active_area; scalar_t__ entry_size; int* active_pages; int pages_per_area; } ;
typedef TYPE_1__ debug_info_t ;


 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static inline void
proceed_active_entry(debug_info_t * id)
{
 if ((id->active_entries[id->active_area] += id->entry_size)
     > (PAGE_SIZE - id->entry_size)){
  id->active_entries[id->active_area] = 0;
  id->active_pages[id->active_area] =
   (id->active_pages[id->active_area] + 1) %
   id->pages_per_area;
 }
}
