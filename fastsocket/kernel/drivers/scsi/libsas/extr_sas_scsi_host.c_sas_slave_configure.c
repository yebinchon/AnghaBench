
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_device {int allow_restart; scalar_t__ tagged_supported; int lun; } ;
struct sas_ha_struct {int dummy; } ;
struct TYPE_6__ {int ap; } ;
struct domain_device {int sas_addr; TYPE_3__* port; TYPE_2__ sata_dev; TYPE_1__* rphy; } ;
struct TYPE_8__ {scalar_t__ device_type; } ;
struct TYPE_7__ {struct sas_ha_struct* ha; } ;
struct TYPE_5__ {TYPE_4__ identify; } ;


 int BUG_ON (int) ;
 int MSG_SIMPLE_TAG ;
 int SAS_ADDR (int ) ;
 int SAS_DEF_QD ;
 int SAS_DPRINTK (char*,int ,int ) ;
 scalar_t__ SAS_END_DEVICE ;
 int ata_sas_slave_configure (struct scsi_device*,int ) ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int sas_read_port_mode_page (struct scsi_device*) ;
 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_deactivate_tcq (struct scsi_device*,int) ;
 int scsi_set_tag_type (struct scsi_device*,int ) ;
 struct domain_device* sdev_to_domain_dev (struct scsi_device*) ;

int sas_slave_configure(struct scsi_device *scsi_dev)
{
 struct domain_device *dev = sdev_to_domain_dev(scsi_dev);
 struct sas_ha_struct *sas_ha;

 BUG_ON(dev->rphy->identify.device_type != SAS_END_DEVICE);

 if (dev_is_sata(dev)) {
  ata_sas_slave_configure(scsi_dev, dev->sata_dev.ap);
  return 0;
 }

 sas_ha = dev->port->ha;

 sas_read_port_mode_page(scsi_dev);

 if (scsi_dev->tagged_supported) {
  scsi_set_tag_type(scsi_dev, MSG_SIMPLE_TAG);
  scsi_activate_tcq(scsi_dev, SAS_DEF_QD);
 } else {
  SAS_DPRINTK("device %llx, LUN %x doesn't support "
       "TCQ\n", SAS_ADDR(dev->sas_addr),
       scsi_dev->lun);
  scsi_dev->tagged_supported = 0;
  scsi_set_tag_type(scsi_dev, 0);
  scsi_deactivate_tcq(scsi_dev, 1);
 }

 scsi_dev->allow_restart = 1;

 return 0;
}
