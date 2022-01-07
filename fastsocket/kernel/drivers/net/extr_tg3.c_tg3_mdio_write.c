
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tg3 {int lock; } ;
struct mii_bus {struct tg3* priv; } ;


 int EIO ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ tg3_writephy (struct tg3*,int,int ) ;

__attribute__((used)) static int tg3_mdio_write(struct mii_bus *bp, int mii_id, int reg, u16 val)
{
 struct tg3 *tp = bp->priv;
 u32 ret = 0;

 spin_lock_bh(&tp->lock);

 if (tg3_writephy(tp, reg, val))
  ret = -EIO;

 spin_unlock_bh(&tp->lock);

 return ret;
}
