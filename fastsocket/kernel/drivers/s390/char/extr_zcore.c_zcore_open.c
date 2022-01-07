
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_RAWIO ;
 int ENODATA ;
 int EPERM ;
 scalar_t__ capable (int ) ;
 int hsa_available ;

__attribute__((used)) static int zcore_open(struct inode *inode, struct file *filp)
{
 if (!hsa_available)
  return -ENODATA;
 else
  return capable(CAP_SYS_RAWIO) ? 0 : -EPERM;
}
