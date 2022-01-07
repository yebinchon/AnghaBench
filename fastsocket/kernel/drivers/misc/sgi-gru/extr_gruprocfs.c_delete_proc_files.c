
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_entry {char* name; scalar_t__ entry; } ;
struct TYPE_3__ {struct TYPE_3__* parent; } ;


 struct proc_entry* proc_files ;
 TYPE_1__* proc_gru ;
 int remove_proc_entry (char*,TYPE_1__*) ;

__attribute__((used)) static void delete_proc_files(void)
{
 struct proc_entry *p;

 if (proc_gru) {
  for (p = proc_files; p->name; p++)
   if (p->entry)
    remove_proc_entry(p->name, proc_gru);
  remove_proc_entry("gru", proc_gru->parent);
 }
}
