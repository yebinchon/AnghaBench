
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mbase; } ;
typedef TYPE_1__ avmcard ;


 scalar_t__ CHAN_1_CONTROL ;
 scalar_t__ CHAN_2_CONTROL ;
 int DBELL_ADDR ;
 int DBELL_RESET_ARM ;
 scalar_t__ DC21285_ARMCSR_BASE ;
 scalar_t__ DOORBELL ;
 int HZ ;
 int c4_poke (TYPE_1__*,scalar_t__,int ) ;
 int c4inmeml (scalar_t__) ;
 int c4outmeml (scalar_t__,int ) ;
 int jiffies ;
 int mb () ;
 int time_before (int,unsigned long) ;

__attribute__((used)) static void c4_reset(avmcard *card)
{
 unsigned long stop;

 c4outmeml(card->mbase+DOORBELL, DBELL_RESET_ARM);

 stop = jiffies + HZ*10;
 while (c4inmeml(card->mbase+DOORBELL) != 0xffffffff) {
  if (!time_before(jiffies, stop))
   return;
  c4outmeml(card->mbase+DOORBELL, DBELL_ADDR);
  mb();
 }

 c4_poke(card, DC21285_ARMCSR_BASE + CHAN_1_CONTROL, 0);
 c4_poke(card, DC21285_ARMCSR_BASE + CHAN_2_CONTROL, 0);
}
