
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_entry {int entry; int fops; int mode; int name; } ;


 int proc_create (int ,int ,int ,int ) ;
 int proc_gru ;

__attribute__((used)) static int create_proc_file(struct proc_entry *p)
{
 p->entry = proc_create(p->name, p->mode, proc_gru, p->fops);
 if (!p->entry)
  return -1;
 return 0;
}
