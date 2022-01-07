
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ ide_proc_entry_t ;


 int remove_proc_entry (int *,struct proc_dir_entry*) ;

__attribute__((used)) static void ide_remove_proc_entries(struct proc_dir_entry *dir, ide_proc_entry_t *p)
{
 if (!dir || !p)
  return;
 while (p->name != ((void*)0)) {
  remove_proc_entry(p->name, dir);
  p++;
 }
}
