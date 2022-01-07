
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct il_priv {int reg_lock; } ;


 int _il_grab_nic_access (struct il_priv*) ;
 int _il_rd_prph (struct il_priv*,int) ;
 int _il_release_nic_access (struct il_priv*) ;
 int _il_wr_prph (struct il_priv*,int,int) ;
 scalar_t__ likely (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
il_clear_bits_prph(struct il_priv *il, u32 reg, u32 mask)
{
 unsigned long reg_flags;
 u32 val;

 spin_lock_irqsave(&il->reg_lock, reg_flags);
 if (likely(_il_grab_nic_access(il))) {
  val = _il_rd_prph(il, reg);
  _il_wr_prph(il, reg, (val & ~mask));
  _il_release_nic_access(il);
 }
 spin_unlock_irqrestore(&il->reg_lock, reg_flags);
}
