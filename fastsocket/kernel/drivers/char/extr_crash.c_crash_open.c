
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_RAWIO ;
 int EPERM ;
 scalar_t__ capable (int ) ;

__attribute__((used)) static int
crash_open(struct inode * inode, struct file * filp)
{
        return capable(CAP_SYS_RAWIO) ? 0 : -EPERM;
}
