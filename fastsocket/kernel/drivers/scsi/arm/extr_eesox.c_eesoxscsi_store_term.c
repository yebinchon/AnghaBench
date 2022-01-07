
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {int dummy; } ;
struct eesoxscsi_info {int ctl_port; int control; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_lock; scalar_t__ hostdata; } ;
typedef size_t ssize_t ;


 struct expansion_card* ECARD_DEV (struct device*) ;
 int EESOX_TERM_ENABLE ;
 struct Scsi_Host* ecard_get_drvdata (struct expansion_card*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int writeb (int ,int ) ;

__attribute__((used)) static ssize_t eesoxscsi_store_term(struct device *dev, struct device_attribute *attr, const char *buf, size_t len)
{
 struct expansion_card *ec = ECARD_DEV(dev);
 struct Scsi_Host *host = ecard_get_drvdata(ec);
 struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;
 unsigned long flags;

 if (len > 1) {
  spin_lock_irqsave(host->host_lock, flags);
  if (buf[0] != '0') {
   info->control |= EESOX_TERM_ENABLE;
  } else {
   info->control &= ~EESOX_TERM_ENABLE;
  }
  writeb(info->control, info->ctl_port);
  spin_unlock_irqrestore(host->host_lock, flags);
 }

 return len;
}
