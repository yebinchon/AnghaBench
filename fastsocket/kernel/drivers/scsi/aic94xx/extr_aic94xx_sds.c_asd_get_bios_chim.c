
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct asd_ocm_dir {int dummy; } ;
struct TYPE_5__ {int num; int size; struct asd_bios_chim_struct* area; } ;
struct TYPE_4__ {int present; int bld; int min; int maj; } ;
struct TYPE_6__ {TYPE_2__ ue; TYPE_1__ bios; } ;
struct asd_ha_struct {TYPE_3__ hw_prof; } ;
struct asd_bios_chim_struct {int major; int flags; int ue_size; int ue_num; int bios_build; int bios_minor; int bios_major; int * sig; } ;


 int ASD_DPRINTK (char*,...) ;
 int BC_BIOS_PRESENT ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OCM_BIOS_CHIM_DE ;
 int asd_find_dir_entry (struct asd_ocm_dir*,int ,int*,int*) ;
 int asd_printk (char*,...) ;
 int asd_read_ocm_seg (struct asd_ha_struct*,void*,int,int) ;
 int kfree (struct asd_bios_chim_struct*) ;
 void* kmalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ strncmp (int *,char*,int) ;

__attribute__((used)) static int asd_get_bios_chim(struct asd_ha_struct *asd_ha,
        struct asd_ocm_dir *dir)
{
 int err;
 struct asd_bios_chim_struct *bc_struct;
 u32 offs, size;

 err = asd_find_dir_entry(dir, OCM_BIOS_CHIM_DE, &offs, &size);
 if (err) {
  ASD_DPRINTK("couldn't find BIOS_CHIM dir ent\n");
  goto out;
 }
 err = -ENOMEM;
 bc_struct = kmalloc(sizeof(*bc_struct), GFP_KERNEL);
 if (!bc_struct) {
  asd_printk("no memory for bios_chim struct\n");
  goto out;
 }
 err = asd_read_ocm_seg(asd_ha, (void *)bc_struct, offs,
          sizeof(*bc_struct));
 if (err) {
  ASD_DPRINTK("couldn't read ocm segment\n");
  goto out2;
 }
 if (strncmp(bc_struct->sig, "SOIB", 4)
     && strncmp(bc_struct->sig, "IPSA", 4)) {
  ASD_DPRINTK("BIOS_CHIM entry has no valid sig(%c%c%c%c)\n",
       bc_struct->sig[0], bc_struct->sig[1],
       bc_struct->sig[2], bc_struct->sig[3]);
  err = -ENOENT;
  goto out2;
 }
 if (bc_struct->major != 1) {
  asd_printk("BIOS_CHIM unsupported major version:0x%x\n",
      bc_struct->major);
  err = -ENOENT;
  goto out2;
 }
 if (bc_struct->flags & BC_BIOS_PRESENT) {
  asd_ha->hw_prof.bios.present = 1;
  asd_ha->hw_prof.bios.maj = bc_struct->bios_major;
  asd_ha->hw_prof.bios.min = bc_struct->bios_minor;
  asd_ha->hw_prof.bios.bld = le32_to_cpu(bc_struct->bios_build);
  ASD_DPRINTK("BIOS present (%d,%d), %d\n",
       asd_ha->hw_prof.bios.maj,
       asd_ha->hw_prof.bios.min,
       asd_ha->hw_prof.bios.bld);
 }
 asd_ha->hw_prof.ue.num = le16_to_cpu(bc_struct->ue_num);
 asd_ha->hw_prof.ue.size= le16_to_cpu(bc_struct->ue_size);
 ASD_DPRINTK("ue num:%d, ue size:%d\n", asd_ha->hw_prof.ue.num,
      asd_ha->hw_prof.ue.size);
 size = asd_ha->hw_prof.ue.num * asd_ha->hw_prof.ue.size;
 if (size > 0) {
  err = -ENOMEM;
  asd_ha->hw_prof.ue.area = kmalloc(size, GFP_KERNEL);
  if (!asd_ha->hw_prof.ue.area)
   goto out2;
  err = asd_read_ocm_seg(asd_ha, (void *)asd_ha->hw_prof.ue.area,
           offs + sizeof(*bc_struct), size);
  if (err) {
   kfree(asd_ha->hw_prof.ue.area);
   asd_ha->hw_prof.ue.area = ((void*)0);
   asd_ha->hw_prof.ue.num = 0;
   asd_ha->hw_prof.ue.size = 0;
   ASD_DPRINTK("couldn't read ue entries(%d)\n", err);
  }
 }
out2:
 kfree(bc_struct);
out:
 return err;
}
