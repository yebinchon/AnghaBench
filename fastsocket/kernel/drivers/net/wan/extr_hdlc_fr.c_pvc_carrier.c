
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ether; scalar_t__ main; } ;
typedef TYPE_1__ pvc_device ;


 int netif_carrier_off (scalar_t__) ;
 scalar_t__ netif_carrier_ok (scalar_t__) ;
 int netif_carrier_on (scalar_t__) ;

__attribute__((used)) static inline void pvc_carrier(int on, pvc_device *pvc)
{
 if (on) {
  if (pvc->main)
   if (!netif_carrier_ok(pvc->main))
    netif_carrier_on(pvc->main);
  if (pvc->ether)
   if (!netif_carrier_ok(pvc->ether))
    netif_carrier_on(pvc->ether);
 } else {
  if (pvc->main)
   if (netif_carrier_ok(pvc->main))
    netif_carrier_off(pvc->main);
  if (pvc->ether)
   if (netif_carrier_ok(pvc->ether))
    netif_carrier_off(pvc->ether);
 }
}
