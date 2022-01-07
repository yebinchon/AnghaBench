
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_host {int * req; } ;


 scalar_t__ __blk_end_request (int *,int,unsigned int) ;

__attribute__((used)) static bool mg_end_request(struct mg_host *host, int err, unsigned int nr_bytes)
{
 if (__blk_end_request(host->req, err, nr_bytes))
  return 1;

 host->req = ((void*)0);
 return 0;
}
