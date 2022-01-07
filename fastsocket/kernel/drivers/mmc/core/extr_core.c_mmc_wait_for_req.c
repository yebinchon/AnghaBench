
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_request {int done; int * done_data; } ;
struct mmc_host {int dummy; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int complete ;
 int mmc_start_request (struct mmc_host*,struct mmc_request*) ;
 int mmc_wait_done ;
 int wait_for_completion (int *) ;

void mmc_wait_for_req(struct mmc_host *host, struct mmc_request *mrq)
{
 DECLARE_COMPLETION_ONSTACK(complete);

 mrq->done_data = &complete;
 mrq->done = mmc_wait_done;

 mmc_start_request(host, mrq);

 wait_for_completion(&complete);
}
