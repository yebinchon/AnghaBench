
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int name; struct i2o_controller* data; struct proc_dir_entry* next; struct proc_dir_entry* subdir; } ;
struct i2o_controller {int name; } ;


 int i2o_proc_subdir_remove (struct proc_dir_entry*) ;
 int osm_debug (char*,int ) ;
 int remove_proc_entry (int ,struct proc_dir_entry*) ;

__attribute__((used)) static void i2o_proc_iop_remove(struct proc_dir_entry *dir,
    struct i2o_controller *c)
{
 struct proc_dir_entry *pe, *tmp;

 pe = dir->subdir;
 while (pe) {
  tmp = pe->next;
  if (pe->data == c) {
   i2o_proc_subdir_remove(pe);
   remove_proc_entry(pe->name, dir);
  }
  osm_debug("removing IOP /proc/i2o/%s\n", c->name);
  pe = tmp;
 }
}
