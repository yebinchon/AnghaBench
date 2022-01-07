
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ql3_adapter {int dummy; } ;


 int PETBI_NEG_PARTNER ;
 int PETBI_NEG_PAUSE ;
 int PETBI_NEG_PAUSE_MASK ;
 scalar_t__ ql_mii_read_reg (struct ql3_adapter*,int ,int*) ;

__attribute__((used)) static int ql_is_petbi_neg_pause(struct ql3_adapter *qdev)
{
 u16 reg;

 if (ql_mii_read_reg(qdev, PETBI_NEG_PARTNER, &reg) < 0)
  return 0;

 return (reg & PETBI_NEG_PAUSE_MASK) == PETBI_NEG_PAUSE;
}
