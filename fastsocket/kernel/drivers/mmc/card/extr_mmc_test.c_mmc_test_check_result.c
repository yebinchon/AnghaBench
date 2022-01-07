
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mmc_test_card {int dummy; } ;
struct mmc_request {TYPE_3__* data; TYPE_2__* stop; TYPE_1__* cmd; } ;
struct TYPE_6__ {int error; int bytes_xfered; int blocks; int blksz; } ;
struct TYPE_5__ {int error; } ;
struct TYPE_4__ {int error; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int RESULT_FAIL ;
 int RESULT_UNSUP_HOST ;

__attribute__((used)) static int mmc_test_check_result(struct mmc_test_card *test,
 struct mmc_request *mrq)
{
 int ret;

 BUG_ON(!mrq || !mrq->cmd || !mrq->data);

 ret = 0;

 if (!ret && mrq->cmd->error)
  ret = mrq->cmd->error;
 if (!ret && mrq->data->error)
  ret = mrq->data->error;
 if (!ret && mrq->stop && mrq->stop->error)
  ret = mrq->stop->error;
 if (!ret && mrq->data->bytes_xfered !=
  mrq->data->blocks * mrq->data->blksz)
  ret = RESULT_FAIL;

 if (ret == -EINVAL)
  ret = RESULT_UNSUP_HOST;

 return ret;
}
