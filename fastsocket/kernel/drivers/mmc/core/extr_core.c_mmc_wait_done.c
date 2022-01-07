
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int done_data; } ;


 int complete (int ) ;

__attribute__((used)) static void mmc_wait_done(struct mmc_request *mrq)
{
 complete(mrq->done_data);
}
