
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_map {int dummy; } ;
struct idt77252_dev {int tst_lock; int tst_timer; int tst_state; } ;


 int TST_SWITCH_PENDING ;
 int __clear_tst (struct idt77252_dev*,struct vc_map*) ;
 int __fill_tst (struct idt77252_dev*,struct vc_map*,int,unsigned int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_pending (int *) ;

__attribute__((used)) static int
change_tst(struct idt77252_dev *card, struct vc_map *vc,
    int n, unsigned int opc)
{
 unsigned long flags;
 int res;

 spin_lock_irqsave(&card->tst_lock, flags);

 __clear_tst(card, vc);
 res = __fill_tst(card, vc, n, opc);

 set_bit(TST_SWITCH_PENDING, &card->tst_state);
 if (!timer_pending(&card->tst_timer))
  mod_timer(&card->tst_timer, jiffies + 1);

 spin_unlock_irqrestore(&card->tst_lock, flags);
 return res;
}
