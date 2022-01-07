
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct mmc_test_card {int buffer; } ;


 int mmc_test_transfer (struct mmc_test_card*,struct scatterlist*,int,int ,int,int,int) ;
 int sg_init_one (struct scatterlist*,int ,int) ;

__attribute__((used)) static int mmc_test_verify_write(struct mmc_test_card *test)
{
 int ret;
 struct scatterlist sg;

 sg_init_one(&sg, test->buffer, 512);

 ret = mmc_test_transfer(test, &sg, 1, 0, 1, 512, 1);
 if (ret)
  return ret;

 return 0;
}
