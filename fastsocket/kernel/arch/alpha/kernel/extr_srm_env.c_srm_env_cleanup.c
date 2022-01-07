
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; int * name; int * proc_entry; } ;
typedef TYPE_1__ srm_env_t ;


 int * BASE_DIR ;
 int * NAMED_DIR ;
 int * NUMBERED_DIR ;
 int * base_dir ;
 int * named_dir ;
 int * numbered_dir ;
 int remove_proc_entry (int *,int *) ;
 TYPE_1__* srm_named_entries ;
 TYPE_1__* srm_numbered_entries ;

__attribute__((used)) static void
srm_env_cleanup(void)
{
 srm_env_t *entry;
 unsigned long var_num;

 if (base_dir) {



  if (named_dir) {
   entry = srm_named_entries;
   while (entry->name != ((void*)0) && entry->id != 0) {
    if (entry->proc_entry) {
     remove_proc_entry(entry->name,
       named_dir);
     entry->proc_entry = ((void*)0);
    }
    entry++;
   }
   remove_proc_entry(NAMED_DIR, base_dir);
  }




  if (numbered_dir) {
   for (var_num = 0; var_num <= 255; var_num++) {
    entry = &srm_numbered_entries[var_num];

    if (entry->proc_entry) {
     remove_proc_entry(entry->name,
       numbered_dir);
     entry->proc_entry = ((void*)0);
     entry->name = ((void*)0);
    }
   }
   remove_proc_entry(NUMBERED_DIR, base_dir);
  }

  remove_proc_entry(BASE_DIR, ((void*)0));
 }

 return;
}
