
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;
struct host_info {int list; int file_info_list; struct hpsb_host* host; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int host_count ;
 int host_info_list ;
 int host_info_lock ;
 int internal_generation ;
 struct host_info* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void add_host(struct hpsb_host *host)
{
 struct host_info *hi;
 unsigned long flags;

 hi = kmalloc(sizeof(*hi), GFP_KERNEL);

 if (hi) {
  INIT_LIST_HEAD(&hi->list);
  hi->host = host;
  INIT_LIST_HEAD(&hi->file_info_list);

  spin_lock_irqsave(&host_info_lock, flags);
  list_add_tail(&hi->list, &host_info_list);
  host_count++;
  spin_unlock_irqrestore(&host_info_lock, flags);
 }

 atomic_inc(&internal_generation);
}
