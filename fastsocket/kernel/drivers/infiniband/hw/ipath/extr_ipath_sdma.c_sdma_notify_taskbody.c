
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct ipath_devdata {int verbs_dev; int ipath_sdma_lock; int ipath_sdma_notifylist; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int ipath_ib_piobufavail (int ) ;
 int ipath_sdma_notify (struct ipath_devdata*,struct list_head*) ;
 int list_splice_init (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sdma_notify_taskbody(struct ipath_devdata *dd)
{
 unsigned long flags;
 struct list_head list;

 INIT_LIST_HEAD(&list);

 spin_lock_irqsave(&dd->ipath_sdma_lock, flags);

 list_splice_init(&dd->ipath_sdma_notifylist, &list);

 spin_unlock_irqrestore(&dd->ipath_sdma_lock, flags);

 ipath_sdma_notify(dd, &list);
 ipath_ib_piobufavail(dd->verbs_dev);
}
