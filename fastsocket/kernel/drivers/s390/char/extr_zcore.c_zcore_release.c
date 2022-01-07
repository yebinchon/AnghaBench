
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 scalar_t__ hsa_available ;
 int release_hsa () ;

__attribute__((used)) static int zcore_release(struct inode *inode, struct file *filep)
{
 if (hsa_available)
  release_hsa();
 return 0;
}
