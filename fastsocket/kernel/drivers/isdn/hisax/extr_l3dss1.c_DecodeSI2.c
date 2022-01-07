
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sk_buff {int len; int data; } ;


 int DecodeASyncParams (int,int*) ;
 int DecodeSyncParams (int,int) ;
 int* findie (int ,int ,int,int ) ;

__attribute__((used)) static u_char
DecodeSI2(struct sk_buff *skb)
{
 u_char *p;

 if ((p = findie(skb->data, skb->len, 0x7c, 0))) {
  switch (p[4] & 0x0f) {
   case 0x01:
    if (p[1] == 0x04)

     return DecodeSyncParams(160, p[5]);

    else if (p[1] == 0x06)

     return DecodeASyncParams(192, p);

    break;
   case 0x08:
    if (p[1] > 3)
     return DecodeSyncParams(176, p[5]);
    break;
  }
 }
 return 0;
}
