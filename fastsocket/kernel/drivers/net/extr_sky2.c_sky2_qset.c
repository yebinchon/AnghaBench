
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_hw {int dummy; } ;


 int BMU_CLR_RESET ;
 int BMU_FIFO_OP_ON ;
 int BMU_OPER_INIT ;
 int BMU_WM_DEFAULT ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int Q_WM ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_qset(struct sky2_hw *hw, u16 q)
{
 sky2_write32(hw, Q_ADDR(q, Q_CSR), BMU_CLR_RESET);
 sky2_write32(hw, Q_ADDR(q, Q_CSR), BMU_OPER_INIT);
 sky2_write32(hw, Q_ADDR(q, Q_CSR), BMU_FIFO_OP_ON);
 sky2_write32(hw, Q_ADDR(q, Q_WM), BMU_WM_DEFAULT);
}
