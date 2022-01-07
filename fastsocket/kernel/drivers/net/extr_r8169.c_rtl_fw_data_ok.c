
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_fw_phy_action {size_t size; int * code; } ;
struct rtl8169_private {int dev; } ;
struct net_device {int dummy; } ;
 int ifup ;
 int le32_to_cpu (int ) ;
 int netif_err (struct rtl8169_private*,int ,int ,char*,...) ;

__attribute__((used)) static bool rtl_fw_data_ok(struct rtl8169_private *tp, struct net_device *dev,
      struct rtl_fw_phy_action *pa)
{
 bool rc = 0;
 size_t index;

 for (index = 0; index < pa->size; index++) {
  u32 action = le32_to_cpu(pa->code[index]);
  u32 regno = (action & 0x0fff0000) >> 16;

  switch(action & 0xf0000000) {
  case 136:
  case 138:
  case 139:
  case 134:
  case 142:
  case 131:
  case 128:
  case 137:
   break;

  case 143:
   if (regno > index) {
    netif_err(tp, ifup, tp->dev,
       "Out of range of firmware\n");
    goto out;
   }
   break;
  case 135:
   if (index + 2 >= pa->size) {
    netif_err(tp, ifup, tp->dev,
       "Out of range of firmware\n");
    goto out;
   }
   break;
  case 141:
  case 140:
  case 132:
   if (index + 1 + regno >= pa->size) {
    netif_err(tp, ifup, tp->dev,
       "Out of range of firmware\n");
    goto out;
   }
   break;

  case 133:
  case 129:
  case 130:
  default:
   netif_err(tp, ifup, tp->dev,
      "Invalid action 0x%08x\n", action);
   goto out;
  }
 }
 rc = 1;
out:
 return rc;
}
