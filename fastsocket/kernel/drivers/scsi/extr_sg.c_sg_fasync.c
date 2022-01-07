
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {scalar_t__ private_data; } ;
struct TYPE_6__ {TYPE_1__* disk; } ;
struct TYPE_5__ {int async_qp; TYPE_3__* parentdp; } ;
struct TYPE_4__ {int disk_name; } ;
typedef TYPE_2__ Sg_fd ;
typedef TYPE_3__ Sg_device ;


 int ENXIO ;
 int SCSI_LOG_TIMEOUT (int,int ) ;
 int fasync_helper (int,struct file*,int,int *) ;
 int printk (char*,int ,int) ;

__attribute__((used)) static int
sg_fasync(int fd, struct file *filp, int mode)
{
 Sg_device *sdp;
 Sg_fd *sfp;

 if ((!(sfp = (Sg_fd *) filp->private_data)) || (!(sdp = sfp->parentdp)))
  return -ENXIO;
 SCSI_LOG_TIMEOUT(3, printk("sg_fasync: %s, mode=%d\n",
       sdp->disk->disk_name, mode));

 return fasync_helper(fd, filp, mode, &sfp->async_qp);
}
