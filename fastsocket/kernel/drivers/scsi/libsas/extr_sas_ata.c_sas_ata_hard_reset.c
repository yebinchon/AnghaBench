
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_phy {int dummy; } ;
struct sas_internal {TYPE_1__* dft; } ;
struct TYPE_4__ {int command_set; } ;
struct domain_device {TYPE_2__ sata_dev; } ;
struct ata_port {int cbl; struct domain_device* private_data; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_3__ {int (* lldd_I_T_nexus_reset ) (struct domain_device*) ;} ;



 int ATA_CBL_SATA ;

 unsigned int ATA_DEV_ATA ;
 unsigned int ATA_DEV_ATAPI ;
 int EAGAIN ;
 int ENODEV ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int TMF_RESP_FUNC_COMPLETE ;
 int ata_wait_after_reset (struct ata_link*,unsigned long,int (*) (struct ata_link*)) ;
 struct sas_internal* dev_to_sas_internal (struct domain_device*) ;
 int local_ata_check_ready (struct ata_link*) ;
 int sas_ata_printk (int ,struct domain_device*,char*,...) ;
 struct sas_phy* sas_get_local_phy (struct domain_device*) ;
 int sas_put_local_phy (struct sas_phy*) ;
 scalar_t__ scsi_is_sas_phy_local (struct sas_phy*) ;
 int smp_ata_check_ready (struct ata_link*) ;
 int stub1 (struct domain_device*) ;

__attribute__((used)) static int sas_ata_hard_reset(struct ata_link *link, unsigned int *class,
         unsigned long deadline)
{
 int ret = 0, res;
 struct sas_phy *phy;
 struct ata_port *ap = link->ap;
 int (*check_ready)(struct ata_link *link);
 struct domain_device *dev = ap->private_data;
 struct sas_internal *i = dev_to_sas_internal(dev);

 res = i->dft->lldd_I_T_nexus_reset(dev);
 if (res == -ENODEV)
  return res;

 if (res != TMF_RESP_FUNC_COMPLETE)
  sas_ata_printk(KERN_DEBUG, dev, "Unable to reset ata device?\n");

 phy = sas_get_local_phy(dev);
 if (scsi_is_sas_phy_local(phy))
  check_ready = local_ata_check_ready;
 else
  check_ready = smp_ata_check_ready;
 sas_put_local_phy(phy);

 ret = ata_wait_after_reset(link, deadline, check_ready);
 if (ret && ret != -EAGAIN)
  sas_ata_printk(KERN_ERR, dev, "reset failed (errno=%d)\n", ret);





 switch (dev->sata_dev.command_set) {
 case 128:
  *class = ATA_DEV_ATA;
  break;
 case 129:
  *class = ATA_DEV_ATAPI;
  break;
 }

 ap->cbl = ATA_CBL_SATA;
 return ret;
}
