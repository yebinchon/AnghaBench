
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;
struct hpsb_highlevel {int host_info_lock; } ;
struct hl_host_info {int list; } ;


 struct hl_host_info* hl_get_hostinfo (struct hpsb_highlevel*,struct hpsb_host*) ;
 int kfree (struct hl_host_info*) ;
 int list_del (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void hpsb_destroy_hostinfo(struct hpsb_highlevel *hl, struct hpsb_host *host)
{
 struct hl_host_info *hi;

 hi = hl_get_hostinfo(hl, host);
 if (hi) {
  unsigned long flags;
  write_lock_irqsave(&hl->host_info_lock, flags);
  list_del(&hi->list);
  write_unlock_irqrestore(&hl->host_info_lock, flags);
  kfree(hi);
 }
 return;
}
