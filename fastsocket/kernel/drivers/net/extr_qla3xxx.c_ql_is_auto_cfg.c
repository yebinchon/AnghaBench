
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ql3_adapter {int dummy; } ;


 int ql_mii_read_reg (struct ql3_adapter*,int,int*) ;

__attribute__((used)) static int ql_is_auto_cfg(struct ql3_adapter *qdev)
{
 u16 reg;
 ql_mii_read_reg(qdev, 0x00, &reg);
 return (reg & 0x1000) != 0;
}
