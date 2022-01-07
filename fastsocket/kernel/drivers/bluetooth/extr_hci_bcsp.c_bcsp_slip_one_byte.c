
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int memcpy (int ,...) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void bcsp_slip_one_byte(struct sk_buff *skb, u8 c)
{
 const char esc_c0[2] = { 0xdb, 0xdc };
 const char esc_db[2] = { 0xdb, 0xdd };

 switch (c) {
 case 0xc0:
  memcpy(skb_put(skb, 2), &esc_c0, 2);
  break;
 case 0xdb:
  memcpy(skb_put(skb, 2), &esc_db, 2);
  break;
 default:
  memcpy(skb_put(skb, 1), &c, 1);
 }
}
