
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_private {int path; int iucv_connected; int iucv_severed; } ;
struct inode {int dummy; } ;
struct file {struct mon_private* private_data; } ;


 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IUCV_IPRMDATA ;
 int MON_IN_USE ;
 int MON_MSGLIM ;
 int MON_SERVICE ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int dev_set_drvdata (int ,struct mon_private*) ;
 int iucv_path_alloc (int ,int ,int ) ;
 int iucv_path_connect (int ,int *,int ,int *,int ,struct mon_private*) ;
 int iucv_path_free (int ) ;
 int lock_kernel () ;
 struct mon_private* mon_alloc_mem () ;
 int mon_conn_wait_queue ;
 int mon_free_mem (struct mon_private*) ;
 int mon_in_use ;
 int monreader_device ;
 int monreader_iucv_handler ;
 int nonseekable_open (struct inode*,struct file*) ;
 int pr_err (char*,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int unlock_kernel () ;
 int user_data_connect ;
 int wait_event (int ,int) ;

__attribute__((used)) static int mon_open(struct inode *inode, struct file *filp)
{
 struct mon_private *monpriv;
 int rc;




 lock_kernel();
 rc = -EBUSY;
 if (test_and_set_bit(MON_IN_USE, &mon_in_use))
  goto out;

 rc = -ENOMEM;
 monpriv = mon_alloc_mem();
 if (!monpriv)
  goto out_use;




 monpriv->path = iucv_path_alloc(MON_MSGLIM, IUCV_IPRMDATA, GFP_KERNEL);
 if (!monpriv->path)
  goto out_priv;
 rc = iucv_path_connect(monpriv->path, &monreader_iucv_handler,
          MON_SERVICE, ((void*)0), user_data_connect, monpriv);
 if (rc) {
  pr_err("Connecting to the z/VM *MONITOR system service "
         "failed with rc=%i\n", rc);
  rc = -EIO;
  goto out_path;
 }



 wait_event(mon_conn_wait_queue,
     atomic_read(&monpriv->iucv_connected) ||
     atomic_read(&monpriv->iucv_severed));
 if (atomic_read(&monpriv->iucv_severed)) {
  atomic_set(&monpriv->iucv_severed, 0);
  atomic_set(&monpriv->iucv_connected, 0);
  rc = -EIO;
  goto out_path;
 }
 filp->private_data = monpriv;
 dev_set_drvdata(monreader_device, monpriv);
 unlock_kernel();
 return nonseekable_open(inode, filp);

out_path:
 iucv_path_free(monpriv->path);
out_priv:
 mon_free_mem(monpriv);
out_use:
 clear_bit(MON_IN_USE, &mon_in_use);
out:
 unlock_kernel();
 return rc;
}
