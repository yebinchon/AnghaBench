
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {scalar_t__ slow_intr_mask; } ;


 int A_PL_INT_ENABLE0 ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int ) ;

void t3_intr_disable(struct adapter *adapter)
{
 t3_write_reg(adapter, A_PL_INT_ENABLE0, 0);
 t3_read_reg(adapter, A_PL_INT_ENABLE0);
 adapter->slow_intr_mask = 0;
}
