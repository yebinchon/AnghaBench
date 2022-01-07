
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int MYPF_REG (int ) ;
 int PL_INT_MAP0 ;
 int PL_PF_INT_ENABLE ;
 int PL_WHOAMI ;
 int SOURCEPF_GET (int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_set_reg_field (struct adapter*,int ,int,int ) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

void t4_intr_disable(struct adapter *adapter)
{
 u32 pf = SOURCEPF_GET(t4_read_reg(adapter, PL_WHOAMI));

 t4_write_reg(adapter, MYPF_REG(PL_PF_INT_ENABLE), 0);
 t4_set_reg_field(adapter, PL_INT_MAP0, 1 << pf, 0);
}
