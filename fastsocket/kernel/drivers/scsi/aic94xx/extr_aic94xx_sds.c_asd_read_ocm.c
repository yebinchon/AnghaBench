
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ocm_dir {int dummy; } ;
struct asd_ha_struct {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int asd_get_bios_chim (struct asd_ha_struct*,struct asd_ocm_dir*) ;
 scalar_t__ asd_hwi_check_ocm_access (struct asd_ha_struct*) ;
 int asd_printk (char*) ;
 int asd_read_ocm_dir (struct asd_ha_struct*,struct asd_ocm_dir*,int ) ;
 int kfree (struct asd_ocm_dir*) ;
 struct asd_ocm_dir* kmalloc (int,int ) ;

int asd_read_ocm(struct asd_ha_struct *asd_ha)
{
 int err;
 struct asd_ocm_dir *dir;

 if (asd_hwi_check_ocm_access(asd_ha))
  return -1;

 dir = kmalloc(sizeof(*dir), GFP_KERNEL);
 if (!dir) {
  asd_printk("no memory for ocm dir\n");
  return -ENOMEM;
 }

 err = asd_read_ocm_dir(asd_ha, dir, 0);
 if (err)
  goto out;

 err = asd_get_bios_chim(asd_ha, dir);
out:
 kfree(dir);
 return err;
}
