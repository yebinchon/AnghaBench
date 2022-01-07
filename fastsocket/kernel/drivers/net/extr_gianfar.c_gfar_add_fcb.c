
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txfcb {int dummy; } ;
struct sk_buff {int dummy; } ;


 int GMAC_FCB_LEN ;
 int memset (struct txfcb*,int ,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static inline struct txfcb *gfar_add_fcb(struct sk_buff *skb)
{
 struct txfcb *fcb = (struct txfcb *)skb_push(skb, GMAC_FCB_LEN);

 memset(fcb, 0, GMAC_FCB_LEN);

 return fcb;
}
