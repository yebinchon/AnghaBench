
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_MOD128 ;
 scalar_t__ l2addrsize (TYPE_1__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
super_error(struct PStack *st, struct sk_buff *skb)
{
 if (skb->len != l2addrsize(&st->l2) +
     (test_bit(FLG_MOD128, &st->l2.flag) ? 2 : 1))
  return 'N';

 return 0;
}
