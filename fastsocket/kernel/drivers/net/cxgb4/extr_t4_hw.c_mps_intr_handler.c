
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_info {int member_0; char* member_1; int member_2; int member_3; } ;
struct adapter {int dummy; } ;



 int CLSINT ;






 int MPS_CLS_INT_CAUSE ;
 int MPS_INT_CAUSE ;
 int MPS_RX_PERR_INT_CAUSE ;
 int MPS_STAT_PERR_INT_CAUSE_RX_FIFO ;
 int MPS_STAT_PERR_INT_CAUSE_SRAM ;
 int MPS_STAT_PERR_INT_CAUSE_TX_FIFO ;
 int MPS_TRC_INT_CAUSE ;
 int MPS_TX_INT_CAUSE ;


 int RXINT ;

 int STATINT ;

 int TRCINT ;


 int TXINT ;
 int t4_fatal_err (struct adapter*) ;
 int t4_handle_intr_status (struct adapter*,int ,struct intr_info const*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void mps_intr_handler(struct adapter *adapter)
{
 static const struct intr_info mps_rx_intr_info[] = {
  { 0xffffff, "MPS Rx parity error", -1, 1 },
  { 0 }
 };
 static const struct intr_info mps_tx_intr_info[] = {
  { 130, "MPS Tx TP FIFO parity error", -1, 1 },
  { 133, "MPS Tx NC-SI FIFO parity error", -1, 1 },
  { 129, "MPS Tx data FIFO parity error", -1, 1 },
  { 128, "MPS Tx desc FIFO parity error", -1, 1 },
  { 140, "MPS Tx underflow", -1, 1 },
  { 131, "MPS Tx SOP/EOP error", -1, 1 },
  { 138, "MPS Tx framing error", -1, 1 },
  { 0 }
 };
 static const struct intr_info mps_trc_intr_info[] = {
  { 139, "MPS TRC filter parity error", -1, 1 },
  { 132, "MPS TRC packet FIFO parity error", -1, 1 },
  { 134, "MPS TRC misc parity error", -1, 1 },
  { 0 }
 };
 static const struct intr_info mps_stat_sram_intr_info[] = {
  { 0x1fffff, "MPS statistics SRAM parity error", -1, 1 },
  { 0 }
 };
 static const struct intr_info mps_stat_tx_intr_info[] = {
  { 0xfffff, "MPS statistics Tx FIFO parity error", -1, 1 },
  { 0 }
 };
 static const struct intr_info mps_stat_rx_intr_info[] = {
  { 0xffffff, "MPS statistics Rx FIFO parity error", -1, 1 },
  { 0 }
 };
 static const struct intr_info mps_cls_intr_info[] = {
  { 136, "MPS match SRAM parity error", -1, 1 },
  { 135, "MPS match TCAM parity error", -1, 1 },
  { 137, "MPS hash SRAM parity error", -1, 1 },
  { 0 }
 };

 int fat;

 fat = t4_handle_intr_status(adapter, MPS_RX_PERR_INT_CAUSE,
        mps_rx_intr_info) +
       t4_handle_intr_status(adapter, MPS_TX_INT_CAUSE,
        mps_tx_intr_info) +
       t4_handle_intr_status(adapter, MPS_TRC_INT_CAUSE,
        mps_trc_intr_info) +
       t4_handle_intr_status(adapter, MPS_STAT_PERR_INT_CAUSE_SRAM,
        mps_stat_sram_intr_info) +
       t4_handle_intr_status(adapter, MPS_STAT_PERR_INT_CAUSE_TX_FIFO,
        mps_stat_tx_intr_info) +
       t4_handle_intr_status(adapter, MPS_STAT_PERR_INT_CAUSE_RX_FIFO,
        mps_stat_rx_intr_info) +
       t4_handle_intr_status(adapter, MPS_CLS_INT_CAUSE,
        mps_cls_intr_info);

 t4_write_reg(adapter, MPS_INT_CAUSE, CLSINT | TRCINT |
       RXINT | TXINT | STATINT);
 t4_read_reg(adapter, MPS_INT_CAUSE);
 if (fat)
  t4_fatal_err(adapter);
}
