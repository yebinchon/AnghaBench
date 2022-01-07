
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * f_op; struct dvb_device* private_data; } ;
struct dvb_net {int exit; } ;
struct dvb_device {int users; int wait_queue; struct dvb_net* priv; } ;


 int dvb_generic_release (struct inode*,struct file*) ;
 int fops_put (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int dvb_net_close(struct inode *inode, struct file *file)
{
 struct dvb_device *dvbdev = file->private_data;
 struct dvb_net *dvbnet = dvbdev->priv;

 dvb_generic_release(inode, file);

 if(dvbdev->users == 1 && dvbnet->exit == 1) {
  fops_put(file->f_op);
  file->f_op = ((void*)0);
  wake_up(&dvbdev->wait_queue);
 }
 return 0;
}
