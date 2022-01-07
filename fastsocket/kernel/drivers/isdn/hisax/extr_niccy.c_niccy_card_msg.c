
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct IsdnCardState {int lock; } ;






 int niccy_reset (struct IsdnCardState*) ;
 int release_io_niccy (struct IsdnCardState*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int niccy_card_msg(struct IsdnCardState *cs, int mt, void *arg)
{
 u_long flags;

 switch (mt) {
 case 129:
  spin_lock_irqsave(&cs->lock, flags);
  niccy_reset(cs);
  spin_unlock_irqrestore(&cs->lock, flags);
  return 0;
 case 130:
  release_io_niccy(cs);
  return 0;
 case 131:
  spin_lock_irqsave(&cs->lock, flags);
  niccy_reset(cs);
  spin_unlock_irqrestore(&cs->lock, flags);
  return 0;
 case 128:
  return 0;
 }
 return 0;
}
