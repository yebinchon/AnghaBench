
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int* data; int len; } ;
struct TYPE_2__ {int maxlen; int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_MOD128 ;
 int FLG_ORIG ;
 int l2addrsize (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
iframe_error(struct PStack *st, struct sk_buff *skb)
{
 int i = l2addrsize(&st->l2) + (test_bit(FLG_MOD128, &st->l2.flag) ? 2 : 1);
 int rsp = *skb->data & 0x2;

 if (test_bit(FLG_ORIG, &st->l2.flag))
  rsp = !rsp;

 if (rsp)
  return 'L';


 if (skb->len < i)
  return 'N';

 if ((skb->len - i) > st->l2.maxlen)
  return 'O';


 return 0;
}
