
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct files_struct {int dummy; } ;
struct file {int dummy; } ;
struct fdtable {int max_fds; int * fd; TYPE_1__* open_fds; } ;
struct TYPE_4__ {struct files_struct* files; } ;
struct TYPE_3__ {unsigned long* fds_bits; } ;


 int __NFDBITS ;
 TYPE_2__* current ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int filp_close (struct file*,struct files_struct*) ;
 int sys_chdir (char*) ;
 struct file* xchg (int *,int *) ;

__attribute__((used)) static void sp_cleanup(void)
{
 struct files_struct *files = current->files;
 int i, j;
 struct fdtable *fdt;

 j = 0;





 fdt = files_fdtable(files);
 for (;;) {
  unsigned long set;
  i = j * __NFDBITS;
  if (i >= fdt->max_fds)
   break;
  set = fdt->open_fds->fds_bits[j++];
  while (set) {
   if (set & 1) {
    struct file * file = xchg(&fdt->fd[i], ((void*)0));
    if (file)
     filp_close(file, files);
   }
   i++;
   set >>= 1;
  }
 }


 sys_chdir("/");
}
