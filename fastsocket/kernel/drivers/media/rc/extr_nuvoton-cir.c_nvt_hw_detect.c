
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvt_dev {int chip_major; int chip_minor; int nvt_lock; int cr_efdr; int cr_efir; } ;


 int CHIP_ID_HIGH ;
 int CHIP_ID_LOW ;
 int CHIP_ID_LOW2 ;
 int CR_CHIP_ID_HI ;
 int CR_CHIP_ID_LO ;
 int CR_EFDR2 ;
 int CR_EFIR2 ;
 int ENODEV ;
 int KERN_ERR ;
 int chip_id ;
 int nvt_cr_read (struct nvt_dev*,int ) ;
 int nvt_dbg (char*,int ,int,int) ;
 int nvt_efm_disable (struct nvt_dev*) ;
 int nvt_efm_enable (struct nvt_dev*) ;
 int nvt_pr (int ,char*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nvt_hw_detect(struct nvt_dev *nvt)
{
 unsigned long flags;
 u8 chip_major, chip_minor;
 int ret = 0;

 nvt_efm_enable(nvt);


 chip_major = nvt_cr_read(nvt, CR_CHIP_ID_HI);
 if (chip_major == 0xff) {
  nvt->cr_efir = CR_EFIR2;
  nvt->cr_efdr = CR_EFDR2;
  nvt_efm_enable(nvt);
  chip_major = nvt_cr_read(nvt, CR_CHIP_ID_HI);
 }

 chip_minor = nvt_cr_read(nvt, CR_CHIP_ID_LO);
 nvt_dbg("%s: chip id: 0x%02x 0x%02x", chip_id, chip_major, chip_minor);

 if (chip_major != CHIP_ID_HIGH ||
     (chip_minor != CHIP_ID_LOW && chip_minor != CHIP_ID_LOW2)) {
  nvt_pr(KERN_ERR, "%s: unsupported chip, id: 0x%02x 0x%02x",
         chip_id, chip_major, chip_minor);
  ret = -ENODEV;
 }

 nvt_efm_disable(nvt);

 spin_lock_irqsave(&nvt->nvt_lock, flags);
 nvt->chip_major = chip_major;
 nvt->chip_minor = chip_minor;
 spin_unlock_irqrestore(&nvt->nvt_lock, flags);

 return ret;
}
