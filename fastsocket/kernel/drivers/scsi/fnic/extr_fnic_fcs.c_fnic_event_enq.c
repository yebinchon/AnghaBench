
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic_event {int event; int list; struct fnic* fnic; } ;
struct fnic {int event_work; int fnic_lock; int evlist; } ;
typedef enum fnic_evt { ____Placeholder_fnic_evt } fnic_evt ;


 int GFP_ATOMIC ;
 struct fnic_event* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fnic_event_enq(struct fnic *fnic, enum fnic_evt ev)
{
 struct fnic_event *fevt;
 unsigned long flags;

 fevt = kmalloc(sizeof(*fevt), GFP_ATOMIC);
 if (!fevt)
  return;

 fevt->fnic = fnic;
 fevt->event = ev;

 spin_lock_irqsave(&fnic->fnic_lock, flags);
 list_add_tail(&fevt->list, &fnic->evlist);
 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 schedule_work(&fnic->event_work);
}
