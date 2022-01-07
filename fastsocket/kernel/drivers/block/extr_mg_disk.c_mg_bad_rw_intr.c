
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_host {scalar_t__ error; TYPE_1__* req; } ;
struct TYPE_2__ {scalar_t__ errors; } ;


 int EIO ;
 scalar_t__ MG_ERR_TIMEOUT ;
 scalar_t__ MG_MAX_ERRORS ;
 int mg_end_request_cur (struct mg_host*,int ) ;

__attribute__((used)) static void mg_bad_rw_intr(struct mg_host *host)
{
 if (host->req)
  if (++host->req->errors >= MG_MAX_ERRORS ||
      host->error == MG_ERR_TIMEOUT)
   mg_end_request_cur(host, -EIO);
}
