
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int reg_lock; } ;


 int _il_set_bit (struct il_priv*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
il_set_bit(struct il_priv *p, u32 r, u32 m)
{
 unsigned long reg_flags;

 spin_lock_irqsave(&p->reg_lock, reg_flags);
 _il_set_bit(p, r, m);
 spin_unlock_irqrestore(&p->reg_lock, reg_flags);
}
