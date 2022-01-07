
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int name; int count; } ;
struct nubus_dev {struct proc_dir_entry* procdir; } ;


 int EBUSY ;
 scalar_t__ atomic_read (int *) ;
 int proc_bus_nubus_dir ;
 int remove_proc_entry (int ,int ) ;

int nubus_proc_detach_device(struct nubus_dev *dev)
{
 struct proc_dir_entry *e;

 if ((e = dev->procdir)) {
  if (atomic_read(&e->count))
   return -EBUSY;
  remove_proc_entry(e->name, proc_bus_nubus_dir);
  dev->procdir = ((void*)0);
 }
 return 0;
}
