
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbox_lock ;
 int* mboxinuse ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int getmbox(void)
{
 unsigned long flags;
 int i;

 spin_lock_irqsave(&mbox_lock, flags);
 for(i=1;i<16;i++) if(!mboxinuse[i]) {
  mboxinuse[i]=1;
  spin_unlock_irqrestore(&mbox_lock, flags);
  return i;
 }
 spin_unlock_irqrestore(&mbox_lock, flags);
 return 0;
}
