
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_phy {int dev; } ;
struct domain_device {scalar_t__ dev_type; int tproto; } ;


 int ASD_DPRINTK (char*,char*,int ) ;
 int ENODEV ;
 int KERN_ERR ;
 int NEXUS_PHASE_POST ;
 int NEXUS_PHASE_PRE ;
 int NEXUS_PHASE_RESUME ;
 int SAS_PROTOCOL_STP ;
 scalar_t__ SATA_DEV ;
 int TC_RESUME ;
 int TMF_RESP_FUNC_COMPLETE ;
 int TMF_RESP_FUNC_FAILED ;
 int asd_clear_nexus_I_T (struct domain_device*,int ) ;
 int dev_name (int *) ;
 int dev_printk (int ,int *,char*,int) ;
 int msleep (int) ;
 struct sas_phy* sas_get_local_phy (struct domain_device*) ;
 int sas_phy_reset (struct sas_phy*,int) ;
 int sas_put_local_phy (struct sas_phy*) ;

int asd_I_T_nexus_reset(struct domain_device *dev)
{
 int res, tmp_res, i;
 struct sas_phy *phy = sas_get_local_phy(dev);


 int reset_type = (dev->dev_type == SATA_DEV ||
     (dev->tproto & SAS_PROTOCOL_STP)) ? 0 : 1;

 asd_clear_nexus_I_T(dev, NEXUS_PHASE_PRE);

 ASD_DPRINTK("sending %s reset to %s\n",
      reset_type ? "hard" : "soft", dev_name(&phy->dev));
 res = sas_phy_reset(phy, reset_type);
 if (res == TMF_RESP_FUNC_COMPLETE || res == -ENODEV) {

  msleep(500);

  asd_clear_nexus_I_T(dev, NEXUS_PHASE_POST);
 }
 for (i = 0 ; i < 3; i++) {
  tmp_res = asd_clear_nexus_I_T(dev, NEXUS_PHASE_RESUME);
  if (tmp_res == TC_RESUME)
   goto out;
  msleep(500);
 }




 dev_printk(KERN_ERR, &phy->dev,
     "Failed to resume nexus after reset 0x%x\n", tmp_res);

 res = TMF_RESP_FUNC_FAILED;
 out:
 sas_put_local_phy(phy);
 return res;
}
