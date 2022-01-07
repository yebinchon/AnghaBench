
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ex_phy {int attached_tproto; scalar_t__ attached_dev_type; int phy_id; scalar_t__ attached_sata_dev; } ;
struct TYPE_5__ {int fis; } ;
struct TYPE_8__ {TYPE_1__ rps; } ;
struct TYPE_6__ {TYPE_4__ rps_resp; } ;
struct domain_device {int tproto; int dev_type; TYPE_2__ sata_dev; int frame_rcvd; TYPE_3__* parent; } ;
struct dev_to_host_fis {int dummy; } ;
struct TYPE_7__ {int sas_addr; } ;


 int SAS_ADDR (int ) ;
 int SAS_DPRINTK (char*,int ,int ,int) ;
 int SAS_PROTOCOL_STP ;
 int SATA_DEV ;
 scalar_t__ SATA_PENDING ;
 int memcpy (int ,int *,int) ;
 int sas_get_ata_command_set (struct domain_device*) ;
 int sas_get_report_phy_sata (TYPE_3__*,int ,TYPE_4__*) ;

int sas_get_ata_info(struct domain_device *dev, struct ex_phy *phy)
{
 if (phy->attached_tproto & SAS_PROTOCOL_STP)
  dev->tproto = phy->attached_tproto;
 if (phy->attached_sata_dev)
  dev->tproto |= SATA_DEV;

 if (phy->attached_dev_type == SATA_PENDING)
  dev->dev_type = SATA_PENDING;
 else {
  int res;

  dev->dev_type = SATA_DEV;
  res = sas_get_report_phy_sata(dev->parent, phy->phy_id,
           &dev->sata_dev.rps_resp);
  if (res) {
   SAS_DPRINTK("report phy sata to %016llx:0x%x returned "
        "0x%x\n", SAS_ADDR(dev->parent->sas_addr),
        phy->phy_id, res);
   return res;
  }
  memcpy(dev->frame_rcvd, &dev->sata_dev.rps_resp.rps.fis,
         sizeof(struct dev_to_host_fis));

  sas_get_ata_command_set(dev);
 }
 return 0;
}
