
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_private {struct mon_private** msg_array; scalar_t__ read_index; scalar_t__ write_index; int msglim_count; int read_ready; int iucv_connected; int iucv_severed; scalar_t__ path; } ;
struct inode {int dummy; } ;
struct file {struct mon_private* private_data; } ;


 int MON_IN_USE ;
 int MON_MSGLIM ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int dev_set_drvdata (int ,int *) ;
 int iucv_path_free (scalar_t__) ;
 int iucv_path_sever (scalar_t__,int ) ;
 int kfree (struct mon_private*) ;
 int mon_in_use ;
 int monreader_device ;
 int pr_warning (char*,int) ;
 int user_data_sever ;

__attribute__((used)) static int mon_close(struct inode *inode, struct file *filp)
{
 int rc, i;
 struct mon_private *monpriv = filp->private_data;




 if (monpriv->path) {
  rc = iucv_path_sever(monpriv->path, user_data_sever);
  if (rc)
   pr_warning("Disconnecting the z/VM *MONITOR system "
       "service failed with rc=%i\n", rc);
  iucv_path_free(monpriv->path);
 }

 atomic_set(&monpriv->iucv_severed, 0);
 atomic_set(&monpriv->iucv_connected, 0);
 atomic_set(&monpriv->read_ready, 0);
 atomic_set(&monpriv->msglim_count, 0);
 monpriv->write_index = 0;
 monpriv->read_index = 0;
 dev_set_drvdata(monreader_device, ((void*)0));

 for (i = 0; i < MON_MSGLIM; i++)
  kfree(monpriv->msg_array[i]);
 kfree(monpriv);
 clear_bit(MON_IN_USE, &mon_in_use);
 return 0;
}
