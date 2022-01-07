
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_fw_phy_action {size_t size; int * code; } ;
struct rtl_fw {struct rtl_fw_phy_action phy_action; } ;
struct rtl8169_private {int dummy; } ;


 int BUG () ;
 int le32_to_cpu (int ) ;
 int mdelay (int) ;
 int rtl8168d_efuse_read (struct rtl8169_private*,int) ;
 int rtl_readphy (struct rtl8169_private*,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl_phy_write_fw(struct rtl8169_private *tp, struct rtl_fw *rtl_fw)
{
 struct rtl_fw_phy_action *pa = &rtl_fw->phy_action;
 u32 predata, count;
 size_t index;

 predata = count = 0;

 for (index = 0; index < pa->size; ) {
  u32 action = le32_to_cpu(pa->code[index]);
  u32 data = action & 0x0000ffff;
  u32 regno = (action & 0x0fff0000) >> 16;

  if (!action)
   break;

  switch(action & 0xf0000000) {
  case 136:
   predata = rtl_readphy(tp, regno);
   count++;
   index++;
   break;
  case 138:
   predata |= data;
   index++;
   break;
  case 139:
   predata &= data;
   index++;
   break;
  case 143:
   index -= regno;
   break;
  case 134:
   predata = rtl8168d_efuse_read(tp, regno);
   index++;
   break;
  case 142:
   count = 0;
   index++;
   break;
  case 131:
   rtl_writephy(tp, regno, data);
   index++;
   break;
  case 135:
   index += (count == data) ? 2 : 1;
   break;
  case 141:
   if (predata == data)
    index += regno;
   index++;
   break;
  case 140:
   if (predata != data)
    index += regno;
   index++;
   break;
  case 128:
   rtl_writephy(tp, regno, predata);
   index++;
   break;
  case 132:
   index += regno + 1;
   break;
  case 137:
   mdelay(data);
   index++;
   break;

  case 133:
  case 129:
  case 130:
  default:
   BUG();
  }
 }
}
