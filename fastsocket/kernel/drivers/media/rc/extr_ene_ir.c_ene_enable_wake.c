
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ene_device {TYPE_1__* pnp_dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENE_FW1 ;
 int ENE_FW1_WAKE ;
 int dbg (char*,char*) ;
 scalar_t__ device_may_wakeup (int *) ;
 int ene_set_clear_reg_mask (struct ene_device*,int ,int ,int) ;

__attribute__((used)) static void ene_enable_wake(struct ene_device *dev, int enable)
{
 enable = enable && device_may_wakeup(&dev->pnp_dev->dev);
 dbg("wake on IR %s", enable ? "enabled" : "disabled");
 ene_set_clear_reg_mask(dev, ENE_FW1, ENE_FW1_WAKE, enable);
}
