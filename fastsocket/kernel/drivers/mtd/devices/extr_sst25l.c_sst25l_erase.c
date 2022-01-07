
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ size; } ;
struct sst25l_flash {int lock; TYPE_2__* spi; TYPE_1__ mtd; } ;
struct mtd_info {int erasesize; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; int state; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int MTD_ERASE_DONE ;
 int MTD_ERASE_FAILED ;
 int dev_err (int *,char*) ;
 int mtd_erase_callback (struct erase_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sst25l_erase_sector (struct sst25l_flash*,int) ;
 int sst25l_wait_till_ready (struct sst25l_flash*) ;
 struct sst25l_flash* to_sst25l_flash (struct mtd_info*) ;

__attribute__((used)) static int sst25l_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 struct sst25l_flash *flash = to_sst25l_flash(mtd);
 uint32_t addr, end;
 int err;


 if (instr->addr + instr->len > flash->mtd.size)
  return -EINVAL;

 if ((uint32_t)instr->len % mtd->erasesize)
  return -EINVAL;

 if ((uint32_t)instr->addr % mtd->erasesize)
  return -EINVAL;

 addr = instr->addr;
 end = addr + instr->len;

 mutex_lock(&flash->lock);

 err = sst25l_wait_till_ready(flash);
 if (err) {
  mutex_unlock(&flash->lock);
  return err;
 }

 while (addr < end) {
  err = sst25l_erase_sector(flash, addr);
  if (err) {
   mutex_unlock(&flash->lock);
   instr->state = MTD_ERASE_FAILED;
   dev_err(&flash->spi->dev, "Erase failed\n");
   return err;
  }

  addr += mtd->erasesize;
 }

 mutex_unlock(&flash->lock);

 instr->state = MTD_ERASE_DONE;
 mtd_erase_callback(instr);
 return 0;
}
