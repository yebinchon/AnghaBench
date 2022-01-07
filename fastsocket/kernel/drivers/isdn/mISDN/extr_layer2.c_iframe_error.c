
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sk_buff {int* data; scalar_t__ len; } ;
struct layer2 {scalar_t__ maxlen; int flag; } ;


 int FLG_MOD128 ;
 int FLG_ORIG ;
 scalar_t__ l2addrsize (struct layer2*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
iframe_error(struct layer2 *l2, struct sk_buff *skb)
{
 u_int i;
 int rsp = *skb->data & 0x2;

 i = l2addrsize(l2) + (test_bit(FLG_MOD128, &l2->flag) ? 2 : 1);
 if (test_bit(FLG_ORIG, &l2->flag))
  rsp = !rsp;
 if (rsp)
  return 'L';
 if (skb->len < i)
  return 'N';
 if ((skb->len - i) > l2->maxlen)
  return 'O';
 return 0;
}
