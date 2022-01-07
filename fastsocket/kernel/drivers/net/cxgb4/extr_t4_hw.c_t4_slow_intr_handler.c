
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int CIM ;
 int CPL_SWITCH ;
 int EDC0 ;
 int EDC1 ;
 int GLBL_INTR_MASK ;
 int LE ;
 int MA ;
 int MC ;
 int MEM_EDC0 ;
 int MEM_EDC1 ;
 int MEM_MC ;
 int MPS ;
 int NCSI ;
 int PCIE ;
 int PL ;
 int PL_INT_CAUSE ;
 int PM_RX ;
 int PM_TX ;
 int SGE ;
 int SMB ;
 int TP ;
 int ULP_RX ;
 int ULP_TX ;
 int XGMAC0 ;
 int XGMAC1 ;
 int XGMAC_KR0 ;
 int XGMAC_KR1 ;
 int cim_intr_handler (struct adapter*) ;
 int cplsw_intr_handler (struct adapter*) ;
 int le_intr_handler (struct adapter*) ;
 int ma_intr_handler (struct adapter*) ;
 int mem_intr_handler (struct adapter*,int ) ;
 int mps_intr_handler (struct adapter*) ;
 int ncsi_intr_handler (struct adapter*) ;
 int pcie_intr_handler (struct adapter*) ;
 int pl_intr_handler (struct adapter*) ;
 int pmrx_intr_handler (struct adapter*) ;
 int pmtx_intr_handler (struct adapter*) ;
 int sge_intr_handler (struct adapter*) ;
 int smb_intr_handler (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;
 int tp_intr_handler (struct adapter*) ;
 int ulprx_intr_handler (struct adapter*) ;
 int ulptx_intr_handler (struct adapter*) ;
 int xgmac_intr_handler (struct adapter*,int) ;

int t4_slow_intr_handler(struct adapter *adapter)
{
 u32 cause = t4_read_reg(adapter, PL_INT_CAUSE);

 if (!(cause & GLBL_INTR_MASK))
  return 0;
 if (cause & CIM)
  cim_intr_handler(adapter);
 if (cause & MPS)
  mps_intr_handler(adapter);
 if (cause & NCSI)
  ncsi_intr_handler(adapter);
 if (cause & PL)
  pl_intr_handler(adapter);
 if (cause & SMB)
  smb_intr_handler(adapter);
 if (cause & XGMAC0)
  xgmac_intr_handler(adapter, 0);
 if (cause & XGMAC1)
  xgmac_intr_handler(adapter, 1);
 if (cause & XGMAC_KR0)
  xgmac_intr_handler(adapter, 2);
 if (cause & XGMAC_KR1)
  xgmac_intr_handler(adapter, 3);
 if (cause & PCIE)
  pcie_intr_handler(adapter);
 if (cause & MC)
  mem_intr_handler(adapter, MEM_MC);
 if (cause & EDC0)
  mem_intr_handler(adapter, MEM_EDC0);
 if (cause & EDC1)
  mem_intr_handler(adapter, MEM_EDC1);
 if (cause & LE)
  le_intr_handler(adapter);
 if (cause & TP)
  tp_intr_handler(adapter);
 if (cause & MA)
  ma_intr_handler(adapter);
 if (cause & PM_TX)
  pmtx_intr_handler(adapter);
 if (cause & PM_RX)
  pmrx_intr_handler(adapter);
 if (cause & ULP_RX)
  ulprx_intr_handler(adapter);
 if (cause & CPL_SWITCH)
  cplsw_intr_handler(adapter);
 if (cause & SGE)
  sge_intr_handler(adapter);
 if (cause & ULP_TX)
  ulptx_intr_handler(adapter);


 t4_write_reg(adapter, PL_INT_CAUSE, cause & GLBL_INTR_MASK);
 (void) t4_read_reg(adapter, PL_INT_CAUSE);
 return 1;
}
