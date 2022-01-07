
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* start; int size; int idx; } ;
struct tiger_hw {TYPE_2__ send; int name; } ;
struct TYPE_3__ {int nr; struct tiger_hw* hw; } ;
struct tiger_ch {TYPE_1__ bch; } ;


 int pr_debug (char*,int ,int,int,int,int,int ) ;

__attribute__((used)) static void
fill_mem(struct tiger_ch *bc, u32 idx, u32 cnt, u32 fill)
{
 struct tiger_hw *card = bc->bch.hw;
 u32 mask = 0xff, val;

 pr_debug("%s: B%1d fill %02x len %d idx %d/%d\n", card->name,
  bc->bch.nr, fill, cnt, idx, card->send.idx);
 if (bc->bch.nr & 2) {
  fill <<= 8;
  mask <<= 8;
 }
 mask ^= 0xffffffff;
 while (cnt--) {
  val = card->send.start[idx];
  val &= mask;
  val |= fill;
  card->send.start[idx++] = val;
  if (idx >= card->send.size)
   idx = 0;
 }
}
