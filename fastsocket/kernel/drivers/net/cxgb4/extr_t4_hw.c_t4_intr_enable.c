
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int EGRESS_SIZE_ERR ;
 int ERR_BAD_DB_PIDX0 ;
 int ERR_BAD_DB_PIDX1 ;
 int ERR_BAD_DB_PIDX2 ;
 int ERR_BAD_DB_PIDX3 ;
 int ERR_CPL_EXCEED_IQE_SIZE ;
 int ERR_CPL_OPCODE_0 ;
 int ERR_DATA_CPL_ON_HIGH_QID0 ;
 int ERR_DATA_CPL_ON_HIGH_QID1 ;
 int ERR_DROPPED_DB ;
 int ERR_EGR_CTXT_PRIO ;
 int ERR_ING_CTXT_PRIO ;
 int ERR_INVALID_CIDX_INC ;
 int F_DBFIFO_HP_INT ;
 int F_DBFIFO_LP_INT ;
 int INGRESS_SIZE_ERR ;
 int MYPF_REG (int ) ;
 int PF_INTR_MASK ;
 int PL_INT_MAP0 ;
 int PL_PF_INT_ENABLE ;
 int PL_WHOAMI ;
 int SGE_INT_ENABLE3 ;
 int SOURCEPF_GET (int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_set_reg_field (struct adapter*,int ,int ,int) ;
 int t4_write_reg (struct adapter*,int ,int) ;

void t4_intr_enable(struct adapter *adapter)
{
 u32 pf = SOURCEPF_GET(t4_read_reg(adapter, PL_WHOAMI));

 t4_write_reg(adapter, SGE_INT_ENABLE3, ERR_CPL_EXCEED_IQE_SIZE |
       ERR_INVALID_CIDX_INC | ERR_CPL_OPCODE_0 |
       ERR_DROPPED_DB | ERR_DATA_CPL_ON_HIGH_QID1 |
       ERR_DATA_CPL_ON_HIGH_QID0 | ERR_BAD_DB_PIDX3 |
       ERR_BAD_DB_PIDX2 | ERR_BAD_DB_PIDX1 |
       ERR_BAD_DB_PIDX0 | ERR_ING_CTXT_PRIO |
       ERR_EGR_CTXT_PRIO | INGRESS_SIZE_ERR |
       F_DBFIFO_HP_INT | F_DBFIFO_LP_INT |
       EGRESS_SIZE_ERR);
 t4_write_reg(adapter, MYPF_REG(PL_PF_INT_ENABLE), PF_INTR_MASK);
 t4_set_reg_field(adapter, PL_INT_MAP0, 0, 1 << pf);
}
