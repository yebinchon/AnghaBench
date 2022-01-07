
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct dtl* i_private; } ;
struct file {struct dtl* private_data; } ;
struct dtl {int dummy; } ;


 int dtl_enable (struct dtl*) ;

__attribute__((used)) static int dtl_file_open(struct inode *inode, struct file *filp)
{
 struct dtl *dtl = inode->i_private;
 int rc;

 rc = dtl_enable(dtl);
 if (rc)
  return rc;

 filp->private_data = dtl;
 return 0;
}
