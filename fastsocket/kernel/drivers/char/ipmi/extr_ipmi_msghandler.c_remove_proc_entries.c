
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ipmi_proc_entry {struct ipmi_proc_entry* name; struct ipmi_proc_entry* next; } ;
typedef TYPE_1__* ipmi_smi_t ;
struct TYPE_3__ {struct ipmi_proc_entry* proc_dir_name; int proc_entry_lock; int proc_dir; struct ipmi_proc_entry* proc_entries; } ;


 int kfree (struct ipmi_proc_entry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int proc_ipmi_root ;
 int remove_proc_entry (struct ipmi_proc_entry*,int ) ;

__attribute__((used)) static void remove_proc_entries(ipmi_smi_t smi)
{
}
