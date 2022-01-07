
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct mmc_test_card {scalar_t__ buffer; TYPE_2__* card; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int max_blk_count; int max_req_size; int max_seg_size; } ;


 int PAGE_SIZE ;
 int RESULT_UNSUP_HOST ;
 unsigned int min (unsigned int,int) ;
 int mmc_test_transfer (struct mmc_test_card*,struct scatterlist*,int,int ,unsigned int,int,int ) ;
 int sg_init_one (struct scatterlist*,scalar_t__,unsigned int) ;

__attribute__((used)) static int mmc_test_align_multi_read(struct mmc_test_card *test)
{
 int ret, i;
 unsigned int size;
 struct scatterlist sg;

 if (test->card->host->max_blk_count == 1)
  return RESULT_UNSUP_HOST;

 size = PAGE_SIZE * 2;
 size = min(size, test->card->host->max_req_size);
 size = min(size, test->card->host->max_seg_size);
 size = min(size, test->card->host->max_blk_count * 512);

 if (size < 1024)
  return RESULT_UNSUP_HOST;

 for (i = 1;i < 4;i++) {
  sg_init_one(&sg, test->buffer + i, size);
  ret = mmc_test_transfer(test, &sg, 1, 0, size/512, 512, 0);
  if (ret)
   return ret;
 }

 return 0;
}
