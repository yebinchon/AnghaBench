
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int parent; int name; int data; } ;


 int kfree (int ) ;
 int remove_proc_entry (int ,int ) ;

__attribute__((used)) static void remove_flash_pde(struct proc_dir_entry *dp)
{
 if (dp) {
  kfree(dp->data);
  remove_proc_entry(dp->name, dp->parent);
 }
}
