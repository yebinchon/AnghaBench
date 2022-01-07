
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* proc; TYPE_1__* ddev; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_9__ {char* name; } ;
struct TYPE_7__ {int name; } ;


 TYPE_3__* hostap_proc ;
 int remove_proc_entry (char*,TYPE_3__*) ;
 int remove_proc_subtree (int ,TYPE_3__*) ;

void hostap_remove_proc(local_info_t *local)
{



 if (local->proc != ((void*)0)) {

  remove_proc_entry("scan_results", local->proc);




  remove_proc_entry("pda", local->proc);
  remove_proc_entry("aux_dump", local->proc);
  remove_proc_entry("wds", local->proc);
  remove_proc_entry("stats", local->proc);
  remove_proc_entry("bss_list", local->proc);
  remove_proc_entry("crypt", local->proc);

  remove_proc_entry("debug", local->proc);

  if (hostap_proc != ((void*)0))
   remove_proc_entry(local->proc->name, hostap_proc);
 }

}
