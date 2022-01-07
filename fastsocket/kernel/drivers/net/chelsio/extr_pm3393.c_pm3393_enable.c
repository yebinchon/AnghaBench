
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int fc; int enabled; } ;


 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int PAUSE_RX ;
 int PAUSE_TX ;
 int RXXG_CONF1_VAL ;
 int SUNI1x10GEXP_BITMSK_RXXG_RXEN ;
 int SUNI1x10GEXP_BITMSK_TXXG_FCRX ;
 int SUNI1x10GEXP_BITMSK_TXXG_FCTX ;
 int SUNI1x10GEXP_BITMSK_TXXG_TXEN0 ;
 int SUNI1x10GEXP_REG_RXXG_CONFIG_1 ;
 int SUNI1x10GEXP_REG_TXXG_CONFIG_1 ;
 int TXXG_CONF1_VAL ;
 int pmwrite (struct cmac*,int ,int) ;

__attribute__((used)) static int pm3393_enable(struct cmac *cmac, int which)
{
 if (which & MAC_DIRECTION_RX)
  pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_CONFIG_1,
   (RXXG_CONF1_VAL | SUNI1x10GEXP_BITMSK_RXXG_RXEN));

 if (which & MAC_DIRECTION_TX) {
  u32 val = TXXG_CONF1_VAL | SUNI1x10GEXP_BITMSK_TXXG_TXEN0;

  if (cmac->instance->fc & PAUSE_RX)
   val |= SUNI1x10GEXP_BITMSK_TXXG_FCRX;
  if (cmac->instance->fc & PAUSE_TX)
   val |= SUNI1x10GEXP_BITMSK_TXXG_FCTX;
  pmwrite(cmac, SUNI1x10GEXP_REG_TXXG_CONFIG_1, val);
 }

 cmac->instance->enabled |= which;
 return 0;
}
