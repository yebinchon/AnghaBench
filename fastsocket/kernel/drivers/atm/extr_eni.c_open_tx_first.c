
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ traffic_class; } ;
struct TYPE_4__ {TYPE_2__ txtp; } ;
struct atm_vcc {TYPE_1__ qos; } ;
struct TYPE_6__ {scalar_t__ txing; int * tx; } ;


 scalar_t__ ATM_NONE ;
 TYPE_3__* ENI_VCC (struct atm_vcc*) ;
 int reserve_or_set_tx (struct atm_vcc*,TYPE_2__*,int,int) ;

__attribute__((used)) static int open_tx_first(struct atm_vcc *vcc)
{
 ENI_VCC(vcc)->tx = ((void*)0);
 if (vcc->qos.txtp.traffic_class == ATM_NONE) return 0;
 ENI_VCC(vcc)->txing = 0;
 return reserve_or_set_tx(vcc,&vcc->qos.txtp,1,1);
}
