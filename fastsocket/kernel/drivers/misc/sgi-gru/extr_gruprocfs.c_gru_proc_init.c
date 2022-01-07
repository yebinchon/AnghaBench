
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_entry {scalar_t__ name; } ;


 scalar_t__ create_proc_file (struct proc_entry*) ;
 int delete_proc_files () ;
 struct proc_entry* proc_files ;
 int proc_gru ;
 int proc_mkdir (char*,int *) ;

int gru_proc_init(void)
{
 struct proc_entry *p;

 proc_gru = proc_mkdir("sgi_uv/gru", ((void*)0));

 for (p = proc_files; p->name; p++)
  if (create_proc_file(p))
   goto err;
 return 0;

err:
 delete_proc_files();
 return -1;
}
