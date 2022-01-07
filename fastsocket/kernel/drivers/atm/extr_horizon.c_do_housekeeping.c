
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int housekeeping; int unassigned_cell_count; int hec_error_count; int rx_cell_count; int tx_cell_count; } ;
typedef TYPE_1__ hrz_dev ;


 int HEC_ERROR_COUNT_OFF ;
 int HZ ;
 int RX_CELL_COUNT_OFF ;
 int TX_CELL_COUNT_OFF ;
 int UNASSIGNED_CELL_COUNT_OFF ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ rd_regw (TYPE_1__*,int ) ;

__attribute__((used)) static void do_housekeeping (unsigned long arg) {

  hrz_dev * dev = (hrz_dev *) arg;


  dev->tx_cell_count += rd_regw (dev, TX_CELL_COUNT_OFF);
  dev->rx_cell_count += rd_regw (dev, RX_CELL_COUNT_OFF);
  dev->hec_error_count += rd_regw (dev, HEC_ERROR_COUNT_OFF);
  dev->unassigned_cell_count += rd_regw (dev, UNASSIGNED_CELL_COUNT_OFF);

  mod_timer (&dev->housekeeping, jiffies + HZ/10);

  return;
}
