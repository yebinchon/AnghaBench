
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;
struct hpsb_highlevel {int name; } ;
struct hl_host_info {void* data; int size; } ;


 int EINVAL ;
 int HPSB_ERR (char*,int ) ;
 struct hl_host_info* hl_get_hostinfo (struct hpsb_highlevel*,struct hpsb_host*) ;

int hpsb_set_hostinfo(struct hpsb_highlevel *hl, struct hpsb_host *host,
        void *data)
{
 struct hl_host_info *hi;

 hi = hl_get_hostinfo(hl, host);
 if (hi) {
  if (!hi->size && !hi->data) {
   hi->data = data;
   return 0;
  } else
   HPSB_ERR("%s called hpsb_set_hostinfo when hostinfo "
     "already has data", hl->name);
 } else
  HPSB_ERR("%s called hpsb_set_hostinfo when no hostinfo exists",
    hl->name);
 return -EINVAL;
}
