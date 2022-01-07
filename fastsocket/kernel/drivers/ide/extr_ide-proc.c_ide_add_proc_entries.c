
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct TYPE_3__ {int proc_fops; int mode; int * name; } ;
typedef TYPE_1__ ide_proc_entry_t ;


 struct proc_dir_entry* proc_create_data (int *,int ,struct proc_dir_entry*,int ,void*) ;

__attribute__((used)) static void ide_add_proc_entries(struct proc_dir_entry *dir, ide_proc_entry_t *p, void *data)
{
 struct proc_dir_entry *ent;

 if (!dir || !p)
  return;
 while (p->name != ((void*)0)) {
  ent = proc_create_data(p->name, p->mode, dir, p->proc_fops, data);
  if (!ent) return;
  p++;
 }
}
