
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device_base; } ;
typedef TYPE_1__ islpci_private ;


 scalar_t__ PRV_STATE_SLEEP ;
 int isl38xx_trigger_device (int,int ) ;
 scalar_t__ islpci_get_state (TYPE_1__*) ;

__attribute__((used)) static inline void
islpci_trigger(islpci_private *priv)
{
 isl38xx_trigger_device(islpci_get_state(priv) == PRV_STATE_SLEEP,
          priv->device_base);
}
