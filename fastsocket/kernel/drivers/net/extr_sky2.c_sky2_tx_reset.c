
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_hw {int dummy; } ;


 long BMU_FIFO_RST ;
 long BMU_RST_SET ;
 int GMF_RST_SET ;
 int PREF_UNIT_CTRL ;
 long PREF_UNIT_RST_SET ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int RB_ADDR (int ,int ) ;
 int RB_CTRL ;
 long RB_RST_SET ;
 int SK_REG (unsigned int,int ) ;
 int TXA_CTRL ;
 int TXA_DIS_ALLOC ;
 int TXA_DIS_FSYNC ;
 int TXA_ITI_INI ;
 int TXA_LIM_INI ;
 int TXA_STOP_RC ;
 int TX_GMF_CTRL_T ;
 int Y2_QADDR (int ,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,long) ;
 int sky2_write8 (struct sky2_hw*,int ,int) ;
 int * txqaddr ;

__attribute__((used)) static void sky2_tx_reset(struct sky2_hw *hw, unsigned port)
{

 sky2_write8(hw, SK_REG(port, TXA_CTRL),
      TXA_DIS_FSYNC | TXA_DIS_ALLOC | TXA_STOP_RC);


 sky2_write32(hw, SK_REG(port, TXA_ITI_INI), 0L);
 sky2_write32(hw, SK_REG(port, TXA_LIM_INI), 0L);


 sky2_write32(hw, Q_ADDR(txqaddr[port], Q_CSR),
       BMU_RST_SET | BMU_FIFO_RST);


 sky2_write32(hw, Y2_QADDR(txqaddr[port], PREF_UNIT_CTRL),
       PREF_UNIT_RST_SET);

 sky2_write32(hw, RB_ADDR(txqaddr[port], RB_CTRL), RB_RST_SET);
 sky2_write8(hw, SK_REG(port, TX_GMF_CTRL_T), GMF_RST_SET);
}
