
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int E1000_BPRC ;
 int E1000_BPTC ;
 int E1000_COLC ;
 int E1000_CRCERRS ;
 int E1000_DC ;
 int E1000_ECOL ;
 int E1000_FCRUC ;
 int E1000_GORCH ;
 int E1000_GORCL ;
 int E1000_GOTCH ;
 int E1000_GOTCL ;
 int E1000_GPRC ;
 int E1000_GPTC ;
 int E1000_LATECOL ;
 int E1000_MCC ;
 int E1000_MPC ;
 int E1000_MPRC ;
 int E1000_MPTC ;
 int E1000_RFC ;
 int E1000_RJC ;
 int E1000_RLEC ;
 int E1000_RNBC ;
 int E1000_ROC ;
 int E1000_RUC ;
 int E1000_SCC ;
 int E1000_SEC ;
 int E1000_SYMERRS ;
 int E1000_TORH ;
 int E1000_TORL ;
 int E1000_TOTH ;
 int E1000_TOTL ;
 int E1000_TPR ;
 int E1000_TPT ;
 int E1000_XOFFRXC ;
 int E1000_XOFFTXC ;
 int E1000_XONRXC ;
 int E1000_XONTXC ;
 int rd32 (int ) ;

void igb_clear_hw_cntrs_base(struct e1000_hw *hw)
{
 rd32(E1000_CRCERRS);
 rd32(E1000_SYMERRS);
 rd32(E1000_MPC);
 rd32(E1000_SCC);
 rd32(E1000_ECOL);
 rd32(E1000_MCC);
 rd32(E1000_LATECOL);
 rd32(E1000_COLC);
 rd32(E1000_DC);
 rd32(E1000_SEC);
 rd32(E1000_RLEC);
 rd32(E1000_XONRXC);
 rd32(E1000_XONTXC);
 rd32(E1000_XOFFRXC);
 rd32(E1000_XOFFTXC);
 rd32(E1000_FCRUC);
 rd32(E1000_GPRC);
 rd32(E1000_BPRC);
 rd32(E1000_MPRC);
 rd32(E1000_GPTC);
 rd32(E1000_GORCL);
 rd32(E1000_GORCH);
 rd32(E1000_GOTCL);
 rd32(E1000_GOTCH);
 rd32(E1000_RNBC);
 rd32(E1000_RUC);
 rd32(E1000_RFC);
 rd32(E1000_ROC);
 rd32(E1000_RJC);
 rd32(E1000_TORL);
 rd32(E1000_TORH);
 rd32(E1000_TOTL);
 rd32(E1000_TOTH);
 rd32(E1000_TPR);
 rd32(E1000_TPT);
 rd32(E1000_MPTC);
 rd32(E1000_BPTC);
}
