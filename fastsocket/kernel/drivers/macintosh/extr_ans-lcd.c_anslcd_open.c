
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int cycle_kernel_lock () ;

__attribute__((used)) static int
anslcd_open( struct inode * inode, struct file * file )
{
 cycle_kernel_lock();
 return 0;
}
