
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_MPS_CFG ;
 int A_PM1_TX_CFG ;
 int A_TP_PC_CONFIG ;
 int A_TP_TX_MOD_QUEUE_REQ_MAP ;
 int A_TP_TX_MOD_QUE_TABLE ;
 int A_ULPRX_CTL ;
 int A_ULPTX_CONFIG ;
 int A_ULPTX_DMA_WEIGHT ;
 int F_CFG_RR_ARB ;
 int F_ENFORCEPKT ;
 int F_PORT0ACTIVE ;
 int F_PORT1ACTIVE ;
 int F_ROUND_ROBIN ;
 int F_TPRXPORTEN ;
 int F_TPTXPORT0EN ;
 int F_TPTXPORT1EN ;
 int F_TXTOSQUEUEMAPMODE ;
 int V_D0_WEIGHT (int) ;
 int V_D1_WEIGHT (int) ;
 int V_TX_MOD_QUEUE_REQ_MAP (int) ;
 int t3_set_reg_field (struct adapter*,int ,int ,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void chan_init_hw(struct adapter *adap, unsigned int chan_map)
{
 int i;

 if (chan_map != 3) {
  t3_set_reg_field(adap, A_ULPRX_CTL, F_ROUND_ROBIN, 0);
  t3_set_reg_field(adap, A_ULPTX_CONFIG, F_CFG_RR_ARB, 0);
  t3_write_reg(adap, A_MPS_CFG, F_TPRXPORTEN | F_ENFORCEPKT |
        (chan_map == 1 ? F_TPTXPORT0EN | F_PORT0ACTIVE :
           F_TPTXPORT1EN | F_PORT1ACTIVE));
  t3_write_reg(adap, A_PM1_TX_CFG,
        chan_map == 1 ? 0xffffffff : 0);
 } else {
  t3_set_reg_field(adap, A_ULPRX_CTL, 0, F_ROUND_ROBIN);
  t3_set_reg_field(adap, A_ULPTX_CONFIG, 0, F_CFG_RR_ARB);
  t3_write_reg(adap, A_ULPTX_DMA_WEIGHT,
        V_D1_WEIGHT(16) | V_D0_WEIGHT(16));
  t3_write_reg(adap, A_MPS_CFG, F_TPTXPORT0EN | F_TPTXPORT1EN |
        F_TPRXPORTEN | F_PORT0ACTIVE | F_PORT1ACTIVE |
        F_ENFORCEPKT);
  t3_write_reg(adap, A_PM1_TX_CFG, 0x80008000);
  t3_set_reg_field(adap, A_TP_PC_CONFIG, 0, F_TXTOSQUEUEMAPMODE);
  t3_write_reg(adap, A_TP_TX_MOD_QUEUE_REQ_MAP,
        V_TX_MOD_QUEUE_REQ_MAP(0xaa));
  for (i = 0; i < 16; i++)
   t3_write_reg(adap, A_TP_TX_MOD_QUE_TABLE,
         (i << 16) | 0x1010);
 }
}
