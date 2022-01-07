
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int A_MI1_ADDR ;
 int A_MI1_CFG ;
 int A_MI1_DATA ;
 int A_MI1_OP ;
 int F_BUSY ;
 int MDIO_ATTEMPTS ;
 int M_ST ;
 int V_MDI_OP (int ) ;
 int V_PHYADDR (int) ;
 int V_REGADDR (int) ;
 int V_ST (int ) ;
 int t3_set_reg_field (struct adapter*,int ,int ,int ) ;
 int t3_wait_op_done (struct adapter*,int ,int ,int ,int ,int) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static int mi1_wr_addr(struct adapter *adapter, int phy_addr, int mmd_addr,
         int reg_addr)
{
 u32 addr = V_REGADDR(mmd_addr) | V_PHYADDR(phy_addr);

 t3_set_reg_field(adapter, A_MI1_CFG, V_ST(M_ST), 0);
 t3_write_reg(adapter, A_MI1_ADDR, addr);
 t3_write_reg(adapter, A_MI1_DATA, reg_addr);
 t3_write_reg(adapter, A_MI1_OP, V_MDI_OP(0));
 return t3_wait_op_done(adapter, A_MI1_OP, F_BUSY, 0,
          MDIO_ATTEMPTS, 10);
}
