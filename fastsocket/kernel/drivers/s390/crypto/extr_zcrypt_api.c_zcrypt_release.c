
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int atomic_dec (int *) ;
 int zcrypt_open_count ;

__attribute__((used)) static int zcrypt_release(struct inode *inode, struct file *filp)
{
 atomic_dec(&zcrypt_open_count);
 return 0;
}
