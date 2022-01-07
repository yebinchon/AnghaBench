
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct dtl* i_private; } ;
struct file {int dummy; } ;
struct dtl {int dummy; } ;


 int dtl_disable (struct dtl*) ;

__attribute__((used)) static int dtl_file_release(struct inode *inode, struct file *filp)
{
 struct dtl *dtl = inode->i_private;
 dtl_disable(dtl);
 return 0;
}
