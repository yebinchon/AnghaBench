
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ql3_adapter {size_t mac_index; } ;


 int PETBI_CONTROL_REG ;
 int PETBI_CTRL_AUTO_NEG ;
 int PETBI_CTRL_FULL_DUPLEX ;
 int PETBI_CTRL_RESTART_NEG ;
 int PETBI_CTRL_SPEED_1000 ;
 int PETBI_NEG_ADVER ;
 int PETBI_NEG_DUPLEX ;
 int PETBI_NEG_PAUSE ;
 int PETBI_TBI_AUTO_SENSE ;
 int PETBI_TBI_CTRL ;
 int * PHYAddr ;
 int ql_mii_read_reg_ex (struct ql3_adapter*,int ,int*,int ) ;
 int ql_mii_write_reg_ex (struct ql3_adapter*,int ,int,int ) ;

__attribute__((used)) static void ql_petbi_start_neg_ex(struct ql3_adapter *qdev)
{
 u16 reg;


 ql_mii_read_reg_ex(qdev, PETBI_TBI_CTRL, &reg,
      PHYAddr[qdev->mac_index]);
 reg |= PETBI_TBI_AUTO_SENSE;
 ql_mii_write_reg_ex(qdev, PETBI_TBI_CTRL, reg,
       PHYAddr[qdev->mac_index]);

 ql_mii_write_reg_ex(qdev, PETBI_NEG_ADVER,
       PETBI_NEG_PAUSE | PETBI_NEG_DUPLEX,
       PHYAddr[qdev->mac_index]);

 ql_mii_write_reg_ex(qdev, PETBI_CONTROL_REG,
       PETBI_CTRL_AUTO_NEG | PETBI_CTRL_RESTART_NEG |
       PETBI_CTRL_FULL_DUPLEX | PETBI_CTRL_SPEED_1000,
       PHYAddr[qdev->mac_index]);
}
