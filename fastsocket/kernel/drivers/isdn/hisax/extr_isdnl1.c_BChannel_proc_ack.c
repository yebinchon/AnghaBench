
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct BCState {int ackcnt; int st; int aclock; } ;


 int lli_writewakeup (int ,int) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void
BChannel_proc_ack(struct BCState *bcs)
{
 u_long flags;
 int ack;

 spin_lock_irqsave(&bcs->aclock, flags);
 ack = bcs->ackcnt;
 bcs->ackcnt = 0;
 spin_unlock_irqrestore(&bcs->aclock, flags);
 if (ack)
  lli_writewakeup(bcs->st, ack);
}
