
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct asd_manuf_sec {int dummy; } ;
struct TYPE_2__ {int pcba_sn; int sas_addr; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;
struct asd_flash_dir {int dummy; } ;


 int ASD_DPRINTK (char*,...) ;
 int ENOMEM ;
 int FLASH_DE_MS ;
 int GFP_KERNEL ;
 int SAS_ADDR (int ) ;
 int asd_find_flash_de (struct asd_flash_dir*,int ,scalar_t__*,scalar_t__*) ;
 int asd_ms_get_connector_map (struct asd_ha_struct*,struct asd_manuf_sec*) ;
 int asd_ms_get_pcba_sn (struct asd_ha_struct*,struct asd_manuf_sec*) ;
 int asd_ms_get_phy_params (struct asd_ha_struct*,struct asd_manuf_sec*) ;
 int asd_ms_get_sas_addr (struct asd_ha_struct*,struct asd_manuf_sec*) ;
 int asd_read_flash_seg (struct asd_ha_struct*,void*,scalar_t__,scalar_t__) ;
 int asd_validate_ms (struct asd_manuf_sec*) ;
 int kfree (struct asd_manuf_sec*) ;
 struct asd_manuf_sec* kmalloc (scalar_t__,int ) ;

__attribute__((used)) static int asd_process_ms(struct asd_ha_struct *asd_ha,
     struct asd_flash_dir *flash_dir)
{
 int err;
 struct asd_manuf_sec *manuf_sec;
 u32 offs, size;

 err = asd_find_flash_de(flash_dir, FLASH_DE_MS, &offs, &size);
 if (err) {
  ASD_DPRINTK("Couldn't find the manuf. sector\n");
  goto out;
 }

 if (size == 0)
  goto out;

 err = -ENOMEM;
 manuf_sec = kmalloc(size, GFP_KERNEL);
 if (!manuf_sec) {
  ASD_DPRINTK("no mem for manuf sector\n");
  goto out;
 }

 err = asd_read_flash_seg(asd_ha, (void *)manuf_sec, offs, size);
 if (err) {
  ASD_DPRINTK("couldn't read manuf sector at 0x%x, size 0x%x\n",
       offs, size);
  goto out2;
 }

 err = asd_validate_ms(manuf_sec);
 if (err) {
  ASD_DPRINTK("couldn't validate manuf sector\n");
  goto out2;
 }

 err = asd_ms_get_sas_addr(asd_ha, manuf_sec);
 if (err) {
  ASD_DPRINTK("couldn't read the SAS_ADDR\n");
  goto out2;
 }
 ASD_DPRINTK("manuf sect SAS_ADDR %llx\n",
      SAS_ADDR(asd_ha->hw_prof.sas_addr));

 err = asd_ms_get_pcba_sn(asd_ha, manuf_sec);
 if (err) {
  ASD_DPRINTK("couldn't read the PCBA SN\n");
  goto out2;
 }
 ASD_DPRINTK("manuf sect PCBA SN %s\n", asd_ha->hw_prof.pcba_sn);

 err = asd_ms_get_phy_params(asd_ha, manuf_sec);
 if (err) {
  ASD_DPRINTK("ms: couldn't get phy parameters\n");
  goto out2;
 }

 err = asd_ms_get_connector_map(asd_ha, manuf_sec);
 if (err) {
  ASD_DPRINTK("ms: couldn't get connector map\n");
  goto out2;
 }

out2:
 kfree(manuf_sec);
out:
 return err;
}
