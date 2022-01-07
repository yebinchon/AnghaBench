
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int XferState; scalar_t__ StructType; } ;
struct hw_fib {TYPE_1__ header; } ;
struct fib {int done; int event_lock; struct hw_fib* hw_fib_va; } ;


 int AdapterProcessed ;
 int BUG () ;
 int EINVAL ;
 scalar_t__ FIB_MAGIC ;
 scalar_t__ FIB_MAGIC2 ;
 scalar_t__ FIB_MAGIC2_64 ;
 int HostOwned ;
 int SentFromHost ;
 int cpu_to_le32 (int ) ;
 int fib_dealloc (struct fib*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int aac_fib_complete(struct fib *fibptr)
{
 unsigned long flags;
 struct hw_fib * hw_fib = fibptr->hw_fib_va;





 if (hw_fib->header.XferState == 0)
  return 0;




 if (hw_fib->header.StructType != FIB_MAGIC &&
     hw_fib->header.StructType != FIB_MAGIC2 &&
     hw_fib->header.StructType != FIB_MAGIC2_64)
  return -EINVAL;






 spin_lock_irqsave(&fibptr->event_lock, flags);
 if (fibptr->done == 2) {
  spin_unlock_irqrestore(&fibptr->event_lock, flags);
  return 0;
 }
 spin_unlock_irqrestore(&fibptr->event_lock, flags);

 if((hw_fib->header.XferState & cpu_to_le32(SentFromHost)) &&
  (hw_fib->header.XferState & cpu_to_le32(AdapterProcessed)))
 {
  fib_dealloc(fibptr);
 }
 else if(hw_fib->header.XferState & cpu_to_le32(SentFromHost))
 {




  fib_dealloc(fibptr);
 } else if(hw_fib->header.XferState & cpu_to_le32(HostOwned)) {
  fib_dealloc(fibptr);
 } else {
  BUG();
 }
 return 0;
}
