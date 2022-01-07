
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int ALGNERRC ;
 int CEXTERR ;
 int IAC ;
 int ICRXATC ;
 int ICRXDMTC ;
 int ICRXOC ;
 int ICRXPTC ;
 int ICTXATC ;
 int ICTXPTC ;
 int ICTXQEC ;
 int ICTXQMTC ;
 int MGTPDC ;
 int MGTPRC ;
 int MGTPTC ;
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
 int RXERRC ;
 int TNCRS ;
 int TSCTC ;
 int TSCTFC ;
 int e1000e_clear_hw_cntrs_base (struct e1000_hw*) ;
 int er32 (int ) ;

__attribute__((used)) static void e1000_clear_hw_cntrs_82571(struct e1000_hw *hw)
{
 e1000e_clear_hw_cntrs_base(hw);

 er32(PRC64);
 er32(PRC127);
 er32(PRC255);
 er32(PRC511);
 er32(PRC1023);
 er32(PRC1522);
 er32(PTC64);
 er32(PTC127);
 er32(PTC255);
 er32(PTC511);
 er32(PTC1023);
 er32(PTC1522);

 er32(ALGNERRC);
 er32(RXERRC);
 er32(TNCRS);
 er32(CEXTERR);
 er32(TSCTC);
 er32(TSCTFC);

 er32(MGTPRC);
 er32(MGTPDC);
 er32(MGTPTC);

 er32(IAC);
 er32(ICRXOC);

 er32(ICRXPTC);
 er32(ICRXATC);
 er32(ICTXPTC);
 er32(ICTXATC);
 er32(ICTXQEC);
 er32(ICTXQMTC);
 er32(ICRXDMTC);
}
