
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int flush_lock; int mark_list; } ;
struct flush_entry {int list; int region; int type; } ;
struct dm_dirty_log {struct log_c* context; } ;
typedef int region_t ;


 int BUG_ON (int) ;
 int DM_ULOG_MARK_REGION ;
 int GFP_NOIO ;
 int flush_entry_pool ;
 int list_add (int *,int *) ;
 struct flush_entry* mempool_alloc (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void userspace_mark_region(struct dm_dirty_log *log, region_t region)
{
 unsigned long flags;
 struct log_c *lc = log->context;
 struct flush_entry *fe;


 fe = mempool_alloc(flush_entry_pool, GFP_NOIO);
 BUG_ON(!fe);

 spin_lock_irqsave(&lc->flush_lock, flags);
 fe->type = DM_ULOG_MARK_REGION;
 fe->region = region;
 list_add(&fe->list, &lc->mark_list);
 spin_unlock_irqrestore(&lc->flush_lock, flags);

 return;
}
