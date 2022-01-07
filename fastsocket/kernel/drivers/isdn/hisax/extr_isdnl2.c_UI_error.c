
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int* data; scalar_t__ len; } ;
struct TYPE_2__ {scalar_t__ maxlen; int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_ORIG ;
 scalar_t__ l2addrsize (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
UI_error(struct PStack *st, struct sk_buff *skb)
{
 int rsp = *skb->data & 0x2;
 if (test_bit(FLG_ORIG, &st->l2.flag))
  rsp = !rsp;

 if (rsp)
  return 'L';

 if (skb->len > st->l2.maxlen + l2addrsize(&st->l2) + 1)
  return 'O';

 return 0;
}
