
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int idx; } ;
struct tiger_hw {TYPE_2__ send; int name; } ;
struct TYPE_3__ {int nr; int Flags; } ;
struct tiger_ch {int free; int txstate; int idx; TYPE_1__ bch; } ;


 int FLG_HDLC ;
 int TX_IDLE ;
 int TX_INIT ;
 int TX_UNDERRUN ;
 int bc_next_frame (struct tiger_ch*) ;
 int fill_hdlc_flag (struct tiger_ch*) ;
 int fill_mem (struct tiger_ch*,int ,int,int) ;
 int pr_debug (char*,int ,int ,int,int ,int ) ;
 int pr_info (char*,int ,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
send_tiger_bc(struct tiger_hw *card, struct tiger_ch *bc)
{
 int ret;

 bc->free += card->send.size / 2;
 if (bc->free >= card->send.size) {
  if (!(bc->txstate & (TX_UNDERRUN | TX_INIT))) {
   pr_info("%s: B%1d TX underrun state %x\n", card->name,
    bc->bch.nr, bc->txstate);
   bc->txstate |= TX_UNDERRUN;
  }
  bc->free = card->send.size;
 }
 ret = bc_next_frame(bc);
 if (!ret) {
  if (test_bit(FLG_HDLC, &bc->bch.Flags)) {
   fill_hdlc_flag(bc);
   return;
  }
  pr_debug("%s: B%1d TX no data free %d idx %d/%d\n", card->name,
   bc->bch.nr, bc->free, bc->idx, card->send.idx);
  if (!(bc->txstate & (TX_IDLE | TX_INIT))) {
   fill_mem(bc, bc->idx, bc->free, 0xff);
   if (bc->free == card->send.size)
    bc->txstate |= TX_IDLE;
  }
 }
}
