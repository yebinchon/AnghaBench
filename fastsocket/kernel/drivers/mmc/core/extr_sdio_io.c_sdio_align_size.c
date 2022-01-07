
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdio_func {unsigned int cur_blksize; TYPE_2__* card; } ;
struct TYPE_3__ {scalar_t__ multi_block; } ;
struct TYPE_4__ {TYPE_1__ cccr; } ;


 unsigned int mmc_align_data_size (TYPE_2__*,unsigned int) ;
 unsigned int sdio_max_byte_size (struct sdio_func*) ;

unsigned int sdio_align_size(struct sdio_func *func, unsigned int sz)
{
 unsigned int orig_sz;
 unsigned int blk_sz, byte_sz;
 unsigned chunk_sz;

 orig_sz = sz;






 sz = mmc_align_data_size(func->card, sz);





 if (sz <= sdio_max_byte_size(func))
  return sz;

 if (func->card->cccr.multi_block) {



  if ((sz % func->cur_blksize) == 0)
   return sz;





  blk_sz = ((sz + func->cur_blksize - 1) /
   func->cur_blksize) * func->cur_blksize;
  blk_sz = mmc_align_data_size(func->card, blk_sz);





  if ((blk_sz % func->cur_blksize) == 0)
   return blk_sz;





  byte_sz = mmc_align_data_size(func->card,
    sz % func->cur_blksize);
  if (byte_sz <= sdio_max_byte_size(func)) {
   blk_sz = sz / func->cur_blksize;
   return blk_sz * func->cur_blksize + byte_sz;
  }
 } else {




  chunk_sz = mmc_align_data_size(func->card,
    sdio_max_byte_size(func));
  if (chunk_sz == sdio_max_byte_size(func)) {



   byte_sz = orig_sz % chunk_sz;
   if (byte_sz) {
    byte_sz = mmc_align_data_size(func->card,
      byte_sz);
   }

   return (orig_sz / chunk_sz) * chunk_sz + byte_sz;
  }
 }





 return orig_sz;
}
