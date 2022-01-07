
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int id; } ;



__attribute__((used)) static int alloc_hostnum_cb(struct hpsb_host *host, void *__data)
{
 int *hostnum = __data;

 if (host->id == *hostnum)
  return 1;

 return 0;
}
