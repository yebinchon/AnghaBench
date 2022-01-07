
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ql3_adapter {int dummy; } ;


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
 int ql_mii_read_reg (struct ql3_adapter*,int ,int*) ;
 int ql_mii_write_reg (struct ql3_adapter*,int ,int) ;

__attribute__((used)) static void ql_petbi_start_neg(struct ql3_adapter *qdev)
{
 u16 reg;


 ql_mii_read_reg(qdev, PETBI_TBI_CTRL, &reg);
 reg |= PETBI_TBI_AUTO_SENSE;
 ql_mii_write_reg(qdev, PETBI_TBI_CTRL, reg);

 ql_mii_write_reg(qdev, PETBI_NEG_ADVER,
    PETBI_NEG_PAUSE | PETBI_NEG_DUPLEX);

 ql_mii_write_reg(qdev, PETBI_CONTROL_REG,
    PETBI_CTRL_AUTO_NEG | PETBI_CTRL_RESTART_NEG |
    PETBI_CTRL_FULL_DUPLEX | PETBI_CTRL_SPEED_1000);

}
