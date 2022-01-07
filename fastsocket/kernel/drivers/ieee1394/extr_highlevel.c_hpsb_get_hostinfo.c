
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;
struct hpsb_highlevel {int dummy; } ;
struct hl_host_info {void* data; } ;


 struct hl_host_info* hl_get_hostinfo (struct hpsb_highlevel*,struct hpsb_host*) ;

void *hpsb_get_hostinfo(struct hpsb_highlevel *hl, struct hpsb_host *host)
{
 struct hl_host_info *hi = hl_get_hostinfo(hl, host);

 return hi ? hi->data : ((void*)0);
}
