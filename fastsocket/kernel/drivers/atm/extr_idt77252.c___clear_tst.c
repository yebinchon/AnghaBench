
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_map {int dummy; } ;
struct idt77252_dev {unsigned long* tst; int tst_index; int tst_size; TYPE_1__* soft_tst; int tst_timer; } ;
struct TYPE_2__ {int tste; struct vc_map* vc; } ;


 int TSTE_OPC_VAR ;
 int TSTE_PUSH_ACTIVE ;
 int TSTE_PUSH_IDLE ;
 scalar_t__ timer_pending (int *) ;
 int write_sram (struct idt77252_dev*,unsigned long,int ) ;

__attribute__((used)) static int
__clear_tst(struct idt77252_dev *card, struct vc_map *vc)
{
 unsigned long idle;
 int e;

 idle = card->tst[card->tst_index ^ 1];

 for (e = 0; e < card->tst_size - 2; e++) {
  if (card->soft_tst[e].vc == vc) {
   card->soft_tst[e].vc = ((void*)0);

   card->soft_tst[e].tste = TSTE_OPC_VAR;
   if (timer_pending(&card->tst_timer))
    card->soft_tst[e].tste |= TSTE_PUSH_ACTIVE;
   else {
    write_sram(card, idle + e, TSTE_OPC_VAR);
    card->soft_tst[e].tste |= TSTE_PUSH_IDLE;
   }
  }
 }

 return 0;
}
