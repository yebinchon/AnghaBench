
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct atm_vcc {int dummy; } ;


 int idt77252_send_skb (struct atm_vcc*,struct sk_buff*,int ) ;

__attribute__((used)) static int idt77252_send(struct atm_vcc *vcc, struct sk_buff *skb)
{
 return idt77252_send_skb(vcc, skb, 0);
}
