
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int THIS_MODULE ;
 int module_put (int ) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int rtc_proc_release(struct inode *inode, struct file *file)
{
 int res = single_release(inode, file);
 module_put(THIS_MODULE);
 return res;
}
