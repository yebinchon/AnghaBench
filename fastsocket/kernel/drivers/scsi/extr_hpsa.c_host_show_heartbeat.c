
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int lock; TYPE_1__* cfgtable; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int HeartBeat; } ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 int readl (int *) ;
 struct ctlr_info* shost_to_hba (struct Scsi_Host*) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t host_show_heartbeat(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct ctlr_info *h;
 struct Scsi_Host *shost = class_to_shost(dev);
 u32 heartbeat;
 unsigned long flags;

 h = shost_to_hba(shost);
 spin_lock_irqsave(&h->lock, flags);
 heartbeat = readl(&h->cfgtable->HeartBeat);
 spin_unlock_irqrestore(&h->lock, flags);
 return snprintf(buf, 20, "0x%08x\n", heartbeat);
}
