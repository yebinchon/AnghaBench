
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_struct {int file_lock; } ;
struct file {int dummy; } ;
struct fdtable {int ** fd; } ;
struct binder_proc {struct files_struct* files; } ;


 int BUG_ON (int ) ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int rcu_assign_pointer (int *,struct file*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void task_fd_install(
 struct binder_proc *proc, unsigned int fd, struct file *file)
{
 struct files_struct *files = proc->files;
 struct fdtable *fdt;

 if (files == ((void*)0))
  return;

 spin_lock(&files->file_lock);
 fdt = files_fdtable(files);
 BUG_ON(fdt->fd[fd] != ((void*)0));
 rcu_assign_pointer(fdt->fd[fd], file);
 spin_unlock(&files->file_lock);
}
