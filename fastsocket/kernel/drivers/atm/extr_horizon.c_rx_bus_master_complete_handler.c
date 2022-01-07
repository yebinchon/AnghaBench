
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ hrz_dev ;


 int DBG_ERR ;
 int DBG_RX ;
 int MASTER_RX_COUNT_REG_OFF ;
 int PRINTD (int,char*) ;
 int rx_busy ;
 int rx_schedule (TYPE_1__*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int wr_regl (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void rx_bus_master_complete_handler (hrz_dev * dev) {
  if (test_bit (rx_busy, &dev->flags)) {
    rx_schedule (dev, 1);
  } else {
    PRINTD (DBG_RX|DBG_ERR, "unexpected RX bus master completion");

    wr_regl (dev, MASTER_RX_COUNT_REG_OFF, 0);
  }
  return;
}
