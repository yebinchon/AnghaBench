
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;
struct hpsb_highlevel {int host_info_lock; int host_info_list; int name; } ;
struct hl_host_info {size_t size; int list; struct hpsb_host* host; struct hl_host_info* data; } ;


 int GFP_ATOMIC ;
 int HPSB_ERR (char*,int ) ;
 struct hl_host_info* hl_get_hostinfo (struct hpsb_highlevel*,struct hpsb_host*) ;
 struct hl_host_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void *hpsb_create_hostinfo(struct hpsb_highlevel *hl, struct hpsb_host *host,
      size_t data_size)
{
 struct hl_host_info *hi;
 void *data;
 unsigned long flags;

 hi = hl_get_hostinfo(hl, host);
 if (hi) {
  HPSB_ERR("%s called hpsb_create_hostinfo when hostinfo already"
    " exists", hl->name);
  return ((void*)0);
 }

 hi = kzalloc(sizeof(*hi) + data_size, GFP_ATOMIC);
 if (!hi)
  return ((void*)0);

 if (data_size) {
  data = hi->data = hi + 1;
  hi->size = data_size;
 } else
  data = hi;

 hi->host = host;

 write_lock_irqsave(&hl->host_info_lock, flags);
 list_add_tail(&hi->list, &hl->host_info_list);
 write_unlock_irqrestore(&hl->host_info_lock, flags);

 return data;
}
