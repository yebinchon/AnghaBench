
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENXIO ;
 int iminor (struct inode*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int vc_cons_allocated (unsigned int) ;

__attribute__((used)) static int
vcs_open(struct inode *inode, struct file *filp)
{
 unsigned int currcons = iminor(inode) & 127;
 int ret = 0;

 lock_kernel();
 if(currcons && !vc_cons_allocated(currcons-1))
  ret = -ENXIO;
 unlock_kernel();
 return ret;
}
