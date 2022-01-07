
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int enabled; } ;


 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int RXXG_CONF1_VAL ;
 int SUNI1x10GEXP_REG_RXXG_CONFIG_1 ;
 int SUNI1x10GEXP_REG_TXXG_CONFIG_1 ;
 int TXXG_CONF1_VAL ;
 int pmwrite (struct cmac*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pm3393_disable(struct cmac *cmac, int which)
{
 if (which & MAC_DIRECTION_RX)
  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_CONFIG_1, RXXG_CONF1_VAL);
 if (which & MAC_DIRECTION_TX)
  pmwrite(cmac, SUNI1x10GEXP_REG_TXXG_CONFIG_1, TXXG_CONF1_VAL);





 udelay(20);

 cmac->instance->enabled &= ~which;
 return 0;
}
