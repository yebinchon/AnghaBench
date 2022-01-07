
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vs; int va; unsigned int window; int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_MOD128 ;
 int FLG_PEER_BUSY ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline unsigned int
cansend(struct PStack *st)
{
 unsigned int p1;

 if(test_bit(FLG_MOD128, &st->l2.flag))
  p1 = (st->l2.vs - st->l2.va) % 128;
 else
  p1 = (st->l2.vs - st->l2.va) % 8;
 return ((p1 < st->l2.window) && !test_bit(FLG_PEER_BUSY, &st->l2.flag));
}
