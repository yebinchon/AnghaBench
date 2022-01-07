
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct file {scalar_t__ private_data; } ;
typedef int poll_table ;
struct TYPE_8__ {TYPE_1__* disk; scalar_t__ detached; } ;
struct TYPE_7__ {int cmd_q; int rq_list_lock; TYPE_2__* headrp; int read_wait; scalar_t__ closed; TYPE_4__* parentdp; } ;
struct TYPE_6__ {int done; int sg_io_owned; struct TYPE_6__* nextrp; } ;
struct TYPE_5__ {int disk_name; } ;
typedef TYPE_2__ Sg_request ;
typedef TYPE_3__ Sg_fd ;
typedef TYPE_4__ Sg_device ;


 unsigned int POLLERR ;
 unsigned int POLLHUP ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int SCSI_LOG_TIMEOUT (int,int ) ;
 int SG_MAX_QUEUE ;
 int poll_wait (struct file*,int *,int *) ;
 int printk (char*,int ,int) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int
sg_poll(struct file *filp, poll_table * wait)
{
 unsigned int res = 0;
 Sg_device *sdp;
 Sg_fd *sfp;
 Sg_request *srp;
 int count = 0;
 unsigned long iflags;

 if ((!(sfp = (Sg_fd *) filp->private_data)) || (!(sdp = sfp->parentdp))
     || sfp->closed)
  return POLLERR;
 poll_wait(filp, &sfp->read_wait, wait);
 read_lock_irqsave(&sfp->rq_list_lock, iflags);
 for (srp = sfp->headrp; srp; srp = srp->nextrp) {

  if ((0 == res) && (1 == srp->done) && (!srp->sg_io_owned))
   res = POLLIN | POLLRDNORM;
  ++count;
 }
 read_unlock_irqrestore(&sfp->rq_list_lock, iflags);

 if (sdp->detached)
  res |= POLLHUP;
 else if (!sfp->cmd_q) {
  if (0 == count)
   res |= POLLOUT | POLLWRNORM;
 } else if (count < SG_MAX_QUEUE)
  res |= POLLOUT | POLLWRNORM;
 SCSI_LOG_TIMEOUT(3, printk("sg_poll: %s, res=0x%x\n",
       sdp->disk->disk_name, (int) res));
 return res;
}
