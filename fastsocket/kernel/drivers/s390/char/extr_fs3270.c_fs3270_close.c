
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fs3270 {int view; int * fs_pid; } ;
struct file {struct fs3270* private_data; } ;


 int put_pid (int *) ;
 int raw3270_del_view (int *) ;
 int raw3270_put_view (int *) ;
 int raw3270_reset (int *) ;

__attribute__((used)) static int
fs3270_close(struct inode *inode, struct file *filp)
{
 struct fs3270 *fp;

 fp = filp->private_data;
 filp->private_data = ((void*)0);
 if (fp) {
  put_pid(fp->fs_pid);
  fp->fs_pid = ((void*)0);
  raw3270_reset(&fp->view);
  raw3270_put_view(&fp->view);
  raw3270_del_view(&fp->view);
 }
 return 0;
}
