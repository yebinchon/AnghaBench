
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;


 int E1000_ALGNERRC ;
 int E1000_CBRMPC ;
 int E1000_CBTMPC ;
 int E1000_CEXTERR ;
 int E1000_HGORCH ;
 int E1000_HGORCL ;
 int E1000_HGOTCH ;
 int E1000_HGOTCL ;
 int E1000_HGPTC ;
 int E1000_HTCBDPC ;
 int E1000_HTDPMC ;
 int E1000_IAC ;
 int E1000_ICRXATC ;
 int E1000_ICRXDMTC ;
 int E1000_ICRXOC ;
 int E1000_ICRXPTC ;
 int E1000_ICTXATC ;
 int E1000_ICTXPTC ;
 int E1000_ICTXQEC ;
 int E1000_ICTXQMTC ;
 int E1000_LENERRS ;
 int E1000_MGTPDC ;
 int E1000_MGTPRC ;
 int E1000_MGTPTC ;
 int E1000_PRC1023 ;
 int E1000_PRC127 ;
 int E1000_PRC1522 ;
 int E1000_PRC255 ;
 int E1000_PRC511 ;
 int E1000_PRC64 ;
 int E1000_PTC1023 ;
 int E1000_PTC127 ;
 int E1000_PTC1522 ;
 int E1000_PTC255 ;
 int E1000_PTC511 ;
 int E1000_PTC64 ;
 int E1000_RPTHC ;
 int E1000_RXERRC ;
 int E1000_SCVPC ;
 int E1000_TNCRS ;
 int E1000_TSCTC ;
 int E1000_TSCTFC ;
 scalar_t__ e1000_media_type_internal_serdes ;
 int igb_clear_hw_cntrs_base (struct e1000_hw*) ;
 scalar_t__ igb_sgmii_active_82575 (struct e1000_hw*) ;
 int rd32 (int ) ;

__attribute__((used)) static void igb_clear_hw_cntrs_82575(struct e1000_hw *hw)
{
 igb_clear_hw_cntrs_base(hw);

 rd32(E1000_PRC64);
 rd32(E1000_PRC127);
 rd32(E1000_PRC255);
 rd32(E1000_PRC511);
 rd32(E1000_PRC1023);
 rd32(E1000_PRC1522);
 rd32(E1000_PTC64);
 rd32(E1000_PTC127);
 rd32(E1000_PTC255);
 rd32(E1000_PTC511);
 rd32(E1000_PTC1023);
 rd32(E1000_PTC1522);

 rd32(E1000_ALGNERRC);
 rd32(E1000_RXERRC);
 rd32(E1000_TNCRS);
 rd32(E1000_CEXTERR);
 rd32(E1000_TSCTC);
 rd32(E1000_TSCTFC);

 rd32(E1000_MGTPRC);
 rd32(E1000_MGTPDC);
 rd32(E1000_MGTPTC);

 rd32(E1000_IAC);
 rd32(E1000_ICRXOC);

 rd32(E1000_ICRXPTC);
 rd32(E1000_ICRXATC);
 rd32(E1000_ICTXPTC);
 rd32(E1000_ICTXATC);
 rd32(E1000_ICTXQEC);
 rd32(E1000_ICTXQMTC);
 rd32(E1000_ICRXDMTC);

 rd32(E1000_CBTMPC);
 rd32(E1000_HTDPMC);
 rd32(E1000_CBRMPC);
 rd32(E1000_RPTHC);
 rd32(E1000_HGPTC);
 rd32(E1000_HTCBDPC);
 rd32(E1000_HGORCL);
 rd32(E1000_HGORCH);
 rd32(E1000_HGOTCL);
 rd32(E1000_HGOTCH);
 rd32(E1000_LENERRS);


 if (hw->phy.media_type == e1000_media_type_internal_serdes ||
     igb_sgmii_active_82575(hw))
  rd32(E1000_SCVPC);
}
