
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int BPRC ;
 int BPTC ;
 int COLC ;
 int CRCERRS ;
 int DC ;
 int ECOL ;
 int FCRUC ;
 int GORCH ;
 int GORCL ;
 int GOTCH ;
 int GOTCL ;
 int GPRC ;
 int GPTC ;
 int LATECOL ;
 int MCC ;
 int MPC ;
 int MPRC ;
 int MPTC ;
 int RFC ;
 int RJC ;
 int RLEC ;
 int RNBC ;
 int ROC ;
 int RUC ;
 int SCC ;
 int SEC ;
 int SYMERRS ;
 int TORH ;
 int TORL ;
 int TOTH ;
 int TOTL ;
 int TPR ;
 int TPT ;
 int XOFFRXC ;
 int XOFFTXC ;
 int XONRXC ;
 int XONTXC ;
 int er32 (int ) ;

void e1000e_clear_hw_cntrs_base(struct e1000_hw *hw)
{
 er32(CRCERRS);
 er32(SYMERRS);
 er32(MPC);
 er32(SCC);
 er32(ECOL);
 er32(MCC);
 er32(LATECOL);
 er32(COLC);
 er32(DC);
 er32(SEC);
 er32(RLEC);
 er32(XONRXC);
 er32(XONTXC);
 er32(XOFFRXC);
 er32(XOFFTXC);
 er32(FCRUC);
 er32(GPRC);
 er32(BPRC);
 er32(MPRC);
 er32(GPTC);
 er32(GORCL);
 er32(GORCH);
 er32(GOTCL);
 er32(GOTCH);
 er32(RNBC);
 er32(RUC);
 er32(RFC);
 er32(ROC);
 er32(RJC);
 er32(TORL);
 er32(TORH);
 er32(TOTL);
 er32(TOTH);
 er32(TPR);
 er32(TPT);
 er32(MPTC);
 er32(BPTC);
}
