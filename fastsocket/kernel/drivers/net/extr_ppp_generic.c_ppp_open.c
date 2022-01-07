
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_NET_ADMIN ;
 int EPERM ;
 int capable (int ) ;
 int cycle_kernel_lock () ;

__attribute__((used)) static int ppp_open(struct inode *inode, struct file *file)
{
 cycle_kernel_lock();



 if (!capable(CAP_NET_ADMIN))
  return -EPERM;
 return 0;
}
