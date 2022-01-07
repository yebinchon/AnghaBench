
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int mi_mode; } ;


 scalar_t__ ASIC_REV_5785 ;
 int MAC_MI_MODE ;
 int MAC_MI_MODE_AUTO_POLL ;
 int MDIOBUS_INITED ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_mdio_config_5785 (struct tg3*) ;
 int tw32_f (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void tg3_mdio_start(struct tg3 *tp)
{
 tp->mi_mode &= ~MAC_MI_MODE_AUTO_POLL;
 tw32_f(MAC_MI_MODE, tp->mi_mode);
 udelay(80);

 if (tg3_flag(tp, MDIOBUS_INITED) &&
     tg3_asic_rev(tp) == ASIC_REV_5785)
  tg3_mdio_config_5785(tp);
}
