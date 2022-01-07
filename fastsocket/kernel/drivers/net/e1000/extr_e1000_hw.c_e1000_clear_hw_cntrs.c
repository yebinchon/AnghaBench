
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ mac_type; } ;


 int ALGNERRC ;
 int BPRC ;
 int BPTC ;
 int CEXTERR ;
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
 int MGTPDC ;
 int MGTPRC ;
 int MGTPTC ;
 int MPC ;
 int MPRC ;
 int MPTC ;
 int PRC1023 ;
 int PRC127 ;
 int PRC1522 ;
 int PRC255 ;
 int PRC511 ;
 int PRC64 ;
 int PTC1023 ;
 int PTC127 ;
 int PTC1522 ;
 int PTC255 ;
 int PTC511 ;
 int PTC64 ;
 int RFC ;
 int RJC ;
 int RLEC ;
 int RNBC ;
 int ROC ;
 int RUC ;
 int RXERRC ;
 int SCC ;
 int SEC ;
 int SYMERRS ;
 int TNCRS ;
 int TORH ;
 int TORL ;
 int TOTH ;
 int TOTL ;
 int TPR ;
 int TPT ;
 int TSCTC ;
 int TSCTFC ;
 int XOFFRXC ;
 int XOFFTXC ;
 int XONRXC ;
 int XONTXC ;
 scalar_t__ e1000_82543 ;
 scalar_t__ e1000_82544 ;
 int er32 (int ) ;

__attribute__((used)) static void e1000_clear_hw_cntrs(struct e1000_hw *hw)
{
 volatile u32 temp;

 temp = er32(CRCERRS);
 temp = er32(SYMERRS);
 temp = er32(MPC);
 temp = er32(SCC);
 temp = er32(ECOL);
 temp = er32(MCC);
 temp = er32(LATECOL);
 temp = er32(COLC);
 temp = er32(DC);
 temp = er32(SEC);
 temp = er32(RLEC);
 temp = er32(XONRXC);
 temp = er32(XONTXC);
 temp = er32(XOFFRXC);
 temp = er32(XOFFTXC);
 temp = er32(FCRUC);

 temp = er32(PRC64);
 temp = er32(PRC127);
 temp = er32(PRC255);
 temp = er32(PRC511);
 temp = er32(PRC1023);
 temp = er32(PRC1522);

 temp = er32(GPRC);
 temp = er32(BPRC);
 temp = er32(MPRC);
 temp = er32(GPTC);
 temp = er32(GORCL);
 temp = er32(GORCH);
 temp = er32(GOTCL);
 temp = er32(GOTCH);
 temp = er32(RNBC);
 temp = er32(RUC);
 temp = er32(RFC);
 temp = er32(ROC);
 temp = er32(RJC);
 temp = er32(TORL);
 temp = er32(TORH);
 temp = er32(TOTL);
 temp = er32(TOTH);
 temp = er32(TPR);
 temp = er32(TPT);

 temp = er32(PTC64);
 temp = er32(PTC127);
 temp = er32(PTC255);
 temp = er32(PTC511);
 temp = er32(PTC1023);
 temp = er32(PTC1522);

 temp = er32(MPTC);
 temp = er32(BPTC);

 if (hw->mac_type < e1000_82543)
  return;

 temp = er32(ALGNERRC);
 temp = er32(RXERRC);
 temp = er32(TNCRS);
 temp = er32(CEXTERR);
 temp = er32(TSCTC);
 temp = er32(TSCTFC);

 if (hw->mac_type <= e1000_82544)
  return;

 temp = er32(MGTPRC);
 temp = er32(MGTPDC);
 temp = er32(MGTPTC);
}
