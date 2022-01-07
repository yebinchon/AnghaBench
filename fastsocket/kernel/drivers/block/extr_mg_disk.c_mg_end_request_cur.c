
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_host {int req; } ;


 int blk_rq_cur_bytes (int ) ;
 int mg_end_request (struct mg_host*,int,int ) ;

__attribute__((used)) static bool mg_end_request_cur(struct mg_host *host, int err)
{
 return mg_end_request(host, err, blk_rq_cur_bytes(host->req));
}
