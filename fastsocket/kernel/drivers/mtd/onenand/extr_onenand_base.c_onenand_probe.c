
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int (* read_word ) (scalar_t__) ;int technology; int device_id; int version_id; int dies; int chipsize; int erase_shift; int page_shift; int page_mask; int density_mask; int writesize; scalar_t__ base; int (* write_word ) (int,scalar_t__) ;int (* wait ) (struct mtd_info*,int ) ;} ;
struct mtd_info {int numeraseregions; int writesize; int oobsize; int erasesize; int size; int eraseregions; struct onenand_chip* priv; } ;
struct mtd_erase_region_info {int dummy; } ;


 int ENOMEM ;
 int ENXIO ;
 scalar_t__ FLEXONENAND (struct onenand_chip*) ;
 int FL_RESETING ;
 int GFP_KERNEL ;
 scalar_t__ ONENAND_BOOTRAM ;
 int ONENAND_CMD_READID ;
 int ONENAND_CMD_RESET ;
 scalar_t__ ONENAND_IS_2PLANE (struct onenand_chip*) ;
 scalar_t__ ONENAND_IS_DDP (struct onenand_chip*) ;
 scalar_t__ ONENAND_IS_MLC (struct onenand_chip*) ;
 scalar_t__ ONENAND_REG_DATA_BUFFER_SIZE ;
 scalar_t__ ONENAND_REG_DEVICE_ID ;
 scalar_t__ ONENAND_REG_MANUFACTURER_ID ;
 scalar_t__ ONENAND_REG_SYS_CFG1 ;
 scalar_t__ ONENAND_REG_TECHNOLOGY ;
 scalar_t__ ONENAND_REG_VERSION_ID ;
 int ONENAND_SYS_CFG1_SYNC_READ ;
 int ONENAND_SYS_CFG1_SYNC_WRITE ;
 void* ffs (int) ;
 int flexonenand_get_size (struct mtd_info*) ;
 int kzalloc (int,int ) ;
 int onenand_check_features (struct mtd_info*) ;
 scalar_t__ onenand_check_maf (int) ;
 int onenand_get_density (int) ;
 int onenand_print_device_info (int,int) ;
 int stub1 (scalar_t__) ;
 int stub10 (scalar_t__) ;
 int stub11 (scalar_t__) ;
 int stub12 (scalar_t__) ;
 int stub13 (scalar_t__) ;
 int stub2 (int,scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int stub4 (scalar_t__) ;
 int stub5 (scalar_t__) ;
 int stub6 (int,scalar_t__) ;
 int stub7 (struct mtd_info*,int ) ;
 int stub8 (int,scalar_t__) ;
 int stub9 (scalar_t__) ;

__attribute__((used)) static int onenand_probe(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;
 int bram_maf_id, bram_dev_id, maf_id, dev_id, ver_id;
 int density;
 int syscfg;


 syscfg = this->read_word(this->base + ONENAND_REG_SYS_CFG1);

 this->write_word((syscfg & ~ONENAND_SYS_CFG1_SYNC_READ & ~ONENAND_SYS_CFG1_SYNC_WRITE), this->base + ONENAND_REG_SYS_CFG1);


 this->write_word(ONENAND_CMD_READID, this->base + ONENAND_BOOTRAM);


 bram_maf_id = this->read_word(this->base + ONENAND_BOOTRAM + 0x0);
 bram_dev_id = this->read_word(this->base + ONENAND_BOOTRAM + 0x2);


 this->write_word(ONENAND_CMD_RESET, this->base + ONENAND_BOOTRAM);

 this->wait(mtd, FL_RESETING);


 this->write_word(syscfg, this->base + ONENAND_REG_SYS_CFG1);


 if (onenand_check_maf(bram_maf_id))
  return -ENXIO;


 maf_id = this->read_word(this->base + ONENAND_REG_MANUFACTURER_ID);
 dev_id = this->read_word(this->base + ONENAND_REG_DEVICE_ID);
 ver_id = this->read_word(this->base + ONENAND_REG_VERSION_ID);
 this->technology = this->read_word(this->base + ONENAND_REG_TECHNOLOGY);


 if (maf_id != bram_maf_id || dev_id != bram_dev_id)
  return -ENXIO;


 onenand_print_device_info(dev_id, ver_id);
 this->device_id = dev_id;
 this->version_id = ver_id;

 density = onenand_get_density(dev_id);
 if (FLEXONENAND(this)) {
  this->dies = ONENAND_IS_DDP(this) ? 2 : 1;

  mtd->numeraseregions = this->dies << 1;
  mtd->eraseregions = kzalloc(sizeof(struct mtd_erase_region_info)
     * (this->dies << 1), GFP_KERNEL);
  if (!mtd->eraseregions)
   return -ENOMEM;
 }





 this->chipsize = (16 << density) << 20;



 mtd->writesize = this->read_word(this->base + ONENAND_REG_DATA_BUFFER_SIZE);

 if (ONENAND_IS_MLC(this))
  mtd->writesize <<= 1;

 mtd->oobsize = mtd->writesize >> 5;

 mtd->erasesize = mtd->writesize << 6;





 if (FLEXONENAND(this))
  mtd->erasesize <<= 1;

 this->erase_shift = ffs(mtd->erasesize) - 1;
 this->page_shift = ffs(mtd->writesize) - 1;
 this->page_mask = (1 << (this->erase_shift - this->page_shift)) - 1;

 if (ONENAND_IS_DDP(this))
  this->density_mask = this->chipsize >> (this->erase_shift + 1);

 this->writesize = mtd->writesize;



 if (FLEXONENAND(this))
  flexonenand_get_size(mtd);
 else
  mtd->size = this->chipsize;


 onenand_check_features(mtd);







 if (ONENAND_IS_2PLANE(this)) {
  mtd->writesize <<= 1;
  mtd->erasesize <<= 1;
 }

 return 0;
}
