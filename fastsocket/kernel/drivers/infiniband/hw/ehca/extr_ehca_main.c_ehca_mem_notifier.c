
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
 int NOTIFY_BAD ;
 int NOTIFY_OK ;
 int ehca_gen_err (char*) ;
 int list_empty (int *) ;
 int printk_timed_ratelimit (unsigned long*,int) ;
 int shca_list ;
 int shca_list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ehca_mem_notifier(struct notifier_block *nb,
        unsigned long action, void *data)
{
 static unsigned long ehca_dmem_warn_time;
 unsigned long flags;

 switch (action) {
 case 133:
 case 132:
 case 128:
 case 129:
  return NOTIFY_OK;
 case 130:
 case 131:

  spin_lock_irqsave(&shca_list_lock, flags);
  if (list_empty(&shca_list)) {
   spin_unlock_irqrestore(&shca_list_lock, flags);
   return NOTIFY_OK;
  } else {
   spin_unlock_irqrestore(&shca_list_lock, flags);
   if (printk_timed_ratelimit(&ehca_dmem_warn_time,
         30 * 1000))
    ehca_gen_err("DMEM operations are not allowed"
          "in conjunction with eHCA");
   return NOTIFY_BAD;
  }
 }
 return NOTIFY_OK;
}
