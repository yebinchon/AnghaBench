
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files_struct {int file_lock; } ;
struct file {int dummy; } ;
struct fdtable {unsigned int max_fds; int close_on_exec; struct file** fd; } ;
struct binder_proc {struct files_struct* files; } ;


 long EBADF ;
 int EINTR ;
 int ERESTARTNOHAND ;
 int ERESTARTNOINTR ;
 int ERESTARTSYS ;
 int ERESTART_RESTARTBLOCK ;
 long ESRCH ;
 int FD_CLR (unsigned int,int ) ;
 int __put_unused_fd (struct files_struct*,unsigned int) ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int filp_close (struct file*,struct files_struct*) ;
 int rcu_assign_pointer (struct file*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static long task_close_fd(struct binder_proc *proc, unsigned int fd)
{
 struct file *filp;
 struct files_struct *files = proc->files;
 struct fdtable *fdt;
 int retval;

 if (files == ((void*)0))
  return -ESRCH;

 spin_lock(&files->file_lock);
 fdt = files_fdtable(files);
 if (fd >= fdt->max_fds)
  goto out_unlock;
 filp = fdt->fd[fd];
 if (!filp)
  goto out_unlock;
 rcu_assign_pointer(fdt->fd[fd], ((void*)0));
 FD_CLR(fd, fdt->close_on_exec);
 __put_unused_fd(files, fd);
 spin_unlock(&files->file_lock);
 retval = filp_close(filp, files);


 if (unlikely(retval == -ERESTARTSYS ||
       retval == -ERESTARTNOINTR ||
       retval == -ERESTARTNOHAND ||
       retval == -ERESTART_RESTARTBLOCK))
  retval = -EINTR;

 return retval;

out_unlock:
 spin_unlock(&files->file_lock);
 return -EBADF;
}
