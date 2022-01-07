
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
struct port_info {TYPE_1__ mac; } ;
struct adapter {int dummy; } ;


 scalar_t__ A_XGM_RX_CTRL ;
 scalar_t__ A_XGM_TXFIFO_CFG ;
 scalar_t__ A_XGM_TX_CTRL ;
 int F_ENDROPPKT ;
 int F_RXEN ;
 int F_TXEN ;
 int t3_set_reg_field (struct adapter*,scalar_t__,int ,int ) ;
 int t3_write_reg (struct adapter*,scalar_t__,int ) ;

__attribute__((used)) static void enable_tx_fifo_drain(struct adapter *adapter,
     struct port_info *pi)
{
 t3_set_reg_field(adapter, A_XGM_TXFIFO_CFG + pi->mac.offset, 0,
    F_ENDROPPKT);
 t3_write_reg(adapter, A_XGM_RX_CTRL + pi->mac.offset, 0);
 t3_write_reg(adapter, A_XGM_TX_CTRL + pi->mac.offset, F_TXEN);
 t3_write_reg(adapter, A_XGM_RX_CTRL + pi->mac.offset, F_RXEN);
}
