
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memstick_request {int error; } ;
struct memstick_host {int retries; TYPE_1__* card; } ;
struct TYPE_2__ {int (* next_request ) (TYPE_1__*,struct memstick_request**) ;} ;


 int ENXIO ;
 int cmd_retries ;
 int stub1 (TYPE_1__*,struct memstick_request**) ;

int memstick_next_req(struct memstick_host *host, struct memstick_request **mrq)
{
 int rc = -ENXIO;

 if ((*mrq) && (*mrq)->error && host->retries) {
  (*mrq)->error = rc;
  host->retries--;
  return 0;
 }

 if (host->card && host->card->next_request)
  rc = host->card->next_request(host->card, mrq);

 if (!rc)
  host->retries = cmd_retries > 1 ? cmd_retries - 1 : 1;
 else
  *mrq = ((void*)0);

 return rc;
}
