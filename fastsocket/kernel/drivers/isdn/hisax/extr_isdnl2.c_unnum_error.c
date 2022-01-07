
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int* data; scalar_t__ len; } ;
struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_ORIG ;
 scalar_t__ l2addrsize (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
unnum_error(struct PStack *st, struct sk_buff *skb, int wantrsp)
{
 int rsp = (*skb->data & 0x2) >> 1;
 if (test_bit(FLG_ORIG, &st->l2.flag))
  rsp = !rsp;

 if (rsp != wantrsp)
  return 'L';

 if (skb->len != l2addrsize(&st->l2) + 1)
  return 'N';

 return 0;
}
