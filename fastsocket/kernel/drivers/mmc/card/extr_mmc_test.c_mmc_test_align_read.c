
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct mmc_test_card {scalar_t__ buffer; } ;


 int mmc_test_transfer (struct mmc_test_card*,struct scatterlist*,int,int ,int,int,int ) ;
 int sg_init_one (struct scatterlist*,scalar_t__,int) ;

__attribute__((used)) static int mmc_test_align_read(struct mmc_test_card *test)
{
 int ret, i;
 struct scatterlist sg;

 for (i = 1;i < 4;i++) {
  sg_init_one(&sg, test->buffer + i, 512);
  ret = mmc_test_transfer(test, &sg, 1, 0, 1, 512, 0);
  if (ret)
   return ret;
 }

 return 0;
}
