
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_file_private {int default_retries; scalar_t__ default_retry_time_ms; int recv_mutex; int * fasync_queue; int wait; int recv_msgs; int recv_msg_lock; int user; struct file* file; } ;
struct inode {int dummy; } ;
struct file {struct ipmi_file_private* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int iminor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 int ipmi_create_user (int,int *,struct ipmi_file_private*,int *) ;
 int ipmi_hndlrs ;
 int kfree (struct ipmi_file_private*) ;
 struct ipmi_file_private* kmalloc (int,int ) ;
 int lock_kernel () ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int ipmi_open(struct inode *inode, struct file *file)
{
 int if_num = iminor(inode);
 int rv;
 struct ipmi_file_private *priv;


 priv = kmalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 lock_kernel();
 priv->file = file;

 rv = ipmi_create_user(if_num,
         &ipmi_hndlrs,
         priv,
         &(priv->user));
 if (rv) {
  kfree(priv);
  goto out;
 }

 file->private_data = priv;

 spin_lock_init(&(priv->recv_msg_lock));
 INIT_LIST_HEAD(&(priv->recv_msgs));
 init_waitqueue_head(&priv->wait);
 priv->fasync_queue = ((void*)0);
 mutex_init(&priv->recv_mutex);


 priv->default_retries = -1;
 priv->default_retry_time_ms = 0;

out:
 unlock_kernel();
 return rv;
}
