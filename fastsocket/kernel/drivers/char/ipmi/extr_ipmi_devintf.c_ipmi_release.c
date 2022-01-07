
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_file_private {int user; } ;
struct inode {int dummy; } ;
struct file {struct ipmi_file_private* private_data; } ;


 int ipmi_destroy_user (int ) ;
 int kfree (struct ipmi_file_private*) ;

__attribute__((used)) static int ipmi_release(struct inode *inode, struct file *file)
{
 struct ipmi_file_private *priv = file->private_data;
 int rv;

 rv = ipmi_destroy_user(priv->user);
 if (rv)
  return rv;


 kfree(priv);

 return 0;
}
