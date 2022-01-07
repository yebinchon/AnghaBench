
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int name; struct proc_dir_entry* next; struct proc_dir_entry* subdir; } ;


 int remove_proc_entry (int ,struct proc_dir_entry*) ;

__attribute__((used)) static void i2o_proc_subdir_remove(struct proc_dir_entry *dir)
{
 struct proc_dir_entry *pe, *tmp;
 pe = dir->subdir;
 while (pe) {
  tmp = pe->next;
  i2o_proc_subdir_remove(pe);
  remove_proc_entry(pe->name, dir);
  pe = tmp;
 }
}
