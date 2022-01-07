
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* set_id_led ) (struct efx_nic*,int ) ;} ;


 int EFX_LED_DEFAULT ;
 int EFX_LED_OFF ;
 int EFX_LED_ON ;
 int HZ ;
 int current ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int schedule_timeout_interruptible (int) ;
 int signal_pending (int ) ;
 int stub1 (struct efx_nic*,int ) ;
 int stub2 (struct efx_nic*,int ) ;
 int stub3 (struct efx_nic*,int ) ;

__attribute__((used)) static int efx_ethtool_phys_id(struct net_device *net_dev, u32 count)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 do {
  efx->type->set_id_led(efx, EFX_LED_ON);
  schedule_timeout_interruptible(HZ / 2);

  efx->type->set_id_led(efx, EFX_LED_OFF);
  schedule_timeout_interruptible(HZ / 2);
 } while (!signal_pending(current) && --count != 0);

 efx->type->set_id_led(efx, EFX_LED_DEFAULT);
 return 0;
}
