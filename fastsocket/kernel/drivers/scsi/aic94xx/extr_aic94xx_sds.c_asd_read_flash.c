
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int dummy; } ;
struct asd_flash_dir {int rev; } ;


 int ASD_DPRINTK (char*) ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int asd_find_flash_dir (struct asd_ha_struct*,struct asd_flash_dir*) ;
 int asd_flash_getid (struct asd_ha_struct*) ;
 int asd_printk (char*,int) ;
 int asd_process_ctrl_a_user (struct asd_ha_struct*,struct asd_flash_dir*) ;
 int asd_process_ms (struct asd_ha_struct*,struct asd_flash_dir*) ;
 int kfree (struct asd_flash_dir*) ;
 struct asd_flash_dir* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;

int asd_read_flash(struct asd_ha_struct *asd_ha)
{
 int err;
 struct asd_flash_dir *flash_dir;

 err = asd_flash_getid(asd_ha);
 if (err)
  return err;

 flash_dir = kmalloc(sizeof(*flash_dir), GFP_KERNEL);
 if (!flash_dir)
  return -ENOMEM;

 err = -ENOENT;
 if (!asd_find_flash_dir(asd_ha, flash_dir)) {
  ASD_DPRINTK("couldn't find flash directory\n");
  goto out;
 }

 if (le32_to_cpu(flash_dir->rev) != 2) {
  asd_printk("unsupported flash dir version:0x%x\n",
      le32_to_cpu(flash_dir->rev));
  goto out;
 }

 err = asd_process_ms(asd_ha, flash_dir);
 if (err) {
  ASD_DPRINTK("couldn't process manuf sector settings\n");
  goto out;
 }

 err = asd_process_ctrl_a_user(asd_ha, flash_dir);
 if (err) {
  ASD_DPRINTK("couldn't process CTRL-A user settings\n");
  goto out;
 }

out:
 kfree(flash_dir);
 return err;
}
