
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int A_CIM_IBQ_DBG_CFG ;
 int A_CIM_IBQ_DBG_DATA ;
 int A_SG_CONTEXT_CMD ;
 int EBUSY ;
 int F_CONTEXT_CMD_BUSY ;
 int F_EGRESS ;
 int F_IBQDBGBUSY ;
 int F_IBQDBGEN ;
 int F_IBQDBGWR ;
 int F_RESPONSEQ ;
 int M_IBQDBGADDR ;
 int SGE_QSETS ;
 int V_IBQDBGADDR (int) ;
 int V_IBQDBGQID (int) ;
 int clear_sge_ctxt (struct adapter*,int,int ) ;
 int t3_read_reg (struct adapter*,int ) ;
 int t3_wait_op_done (struct adapter*,int ,int ,int ,int,int) ;
 int t3_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static int init_parity(struct adapter *adap)
{
  int i, err, addr;

 if (t3_read_reg(adap, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
  return -EBUSY;

 for (err = i = 0; !err && i < 16; i++)
  err = clear_sge_ctxt(adap, i, F_EGRESS);
 for (i = 0xfff0; !err && i <= 0xffff; i++)
  err = clear_sge_ctxt(adap, i, F_EGRESS);
 for (i = 0; !err && i < SGE_QSETS; i++)
  err = clear_sge_ctxt(adap, i, F_RESPONSEQ);
 if (err)
  return err;

 t3_write_reg(adap, A_CIM_IBQ_DBG_DATA, 0);
 for (i = 0; i < 4; i++)
  for (addr = 0; addr <= M_IBQDBGADDR; addr++) {
   t3_write_reg(adap, A_CIM_IBQ_DBG_CFG, F_IBQDBGEN |
         F_IBQDBGWR | V_IBQDBGQID(i) |
         V_IBQDBGADDR(addr));
   err = t3_wait_op_done(adap, A_CIM_IBQ_DBG_CFG,
           F_IBQDBGBUSY, 0, 2, 1);
   if (err)
    return err;
  }
 return 0;
}
