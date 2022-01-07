
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_dir_entry {int * read_proc; void* data; } ;
struct ipmi_proc_entry {struct ipmi_proc_entry* next; struct ipmi_proc_entry* name; } ;
typedef int read_proc_t ;
typedef TYPE_1__* ipmi_smi_t ;
struct TYPE_3__ {int proc_entry_lock; struct ipmi_proc_entry* proc_entries; int proc_dir; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct proc_dir_entry* create_proc_entry (char*,int ,int ) ;
 int kfree (struct ipmi_proc_entry*) ;
 void* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcpy (struct ipmi_proc_entry*,char*) ;
 int strlen (char*) ;

int ipmi_smi_add_proc_entry(ipmi_smi_t smi, char *name,
       read_proc_t *read_proc,
       void *data)
{
 int rv = 0;
 return rv;
}
