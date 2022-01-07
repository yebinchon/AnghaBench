
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct mmc_test_card {int buffer; } ;


 int mmc_test_set_blksize (struct mmc_test_card*,int) ;
 int mmc_test_simple_transfer (struct mmc_test_card*,struct scatterlist*,int,int ,int,int,int ) ;
 int sg_init_one (struct scatterlist*,int ,int) ;

__attribute__((used)) static int mmc_test_basic_read(struct mmc_test_card *test)
{
 int ret;
 struct scatterlist sg;

 ret = mmc_test_set_blksize(test, 512);
 if (ret)
  return ret;

 sg_init_one(&sg, test->buffer, 512);

 ret = mmc_test_simple_transfer(test, &sg, 1, 0, 1, 512, 0);
 if (ret)
  return ret;

 return 0;
}
