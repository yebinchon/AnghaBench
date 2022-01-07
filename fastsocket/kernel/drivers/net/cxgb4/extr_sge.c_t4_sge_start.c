
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_timer; int rx_timer; scalar_t__ ethtxq_rover; } ;
struct adapter {TYPE_1__ sge; } ;


 scalar_t__ RX_QCHECK_PERIOD ;
 scalar_t__ TX_QCHECK_PERIOD ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void t4_sge_start(struct adapter *adap)
{
 adap->sge.ethtxq_rover = 0;
 mod_timer(&adap->sge.rx_timer, jiffies + RX_QCHECK_PERIOD);
 mod_timer(&adap->sge.tx_timer, jiffies + TX_QCHECK_PERIOD);
}
