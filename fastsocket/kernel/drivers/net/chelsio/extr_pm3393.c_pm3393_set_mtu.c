
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmac {TYPE_1__* instance; } ;
struct TYPE_2__ {int enabled; } ;


 int EINVAL ;
 int MAC_DIRECTION_RX ;
 int MAC_DIRECTION_TX ;
 int MAX_FRAME_SIZE ;
 int SUNI1x10GEXP_REG_RXXG_MAX_FRAME_LENGTH ;
 int SUNI1x10GEXP_REG_TXXG_MAX_FRAME_SIZE ;
 int pm3393_disable (struct cmac*,int) ;
 int pm3393_enable (struct cmac*,int) ;
 int pmwrite (struct cmac*,int ,int) ;

__attribute__((used)) static int pm3393_set_mtu(struct cmac *cmac, int mtu)
{
 int enabled = cmac->instance->enabled;


 mtu += 14 + 4;
 if (mtu > MAX_FRAME_SIZE)
  return -EINVAL;


 if (enabled)
  pm3393_disable(cmac, MAC_DIRECTION_RX | MAC_DIRECTION_TX);

 pmwrite(cmac, SUNI1x10GEXP_REG_RXXG_MAX_FRAME_LENGTH, mtu);
 pmwrite(cmac, SUNI1x10GEXP_REG_TXXG_MAX_FRAME_SIZE, mtu);

 if (enabled)
  pm3393_enable(cmac, enabled);
 return 0;
}
