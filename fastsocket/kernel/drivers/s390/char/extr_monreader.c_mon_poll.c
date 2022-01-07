
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct mon_private {int read_ready; int iucv_severed; } ;
struct file {struct mon_private* private_data; } ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 scalar_t__ atomic_read (int *) ;
 int mon_read_wait_queue ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static unsigned int mon_poll(struct file *filp, struct poll_table_struct *p)
{
 struct mon_private *monpriv = filp->private_data;

 poll_wait(filp, &mon_read_wait_queue, p);
 if (unlikely(atomic_read(&monpriv->iucv_severed)))
  return POLLERR;
 if (atomic_read(&monpriv->read_ready))
  return POLLIN | POLLRDNORM;
 return 0;
}
