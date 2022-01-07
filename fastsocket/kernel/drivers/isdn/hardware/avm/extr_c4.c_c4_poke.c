
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mbase; } ;
typedef TYPE_1__ avmcard ;


 unsigned long DBELL_ADDR ;
 unsigned long DBELL_DATA ;
 scalar_t__ DOORBELL ;
 int HZ ;
 scalar_t__ MBOX_PEEK_POKE ;
 int c4outmeml (scalar_t__,unsigned long) ;
 scalar_t__ wait_for_doorbell (TYPE_1__*,int) ;

__attribute__((used)) static int c4_poke(avmcard *card, unsigned long off, unsigned long value)
{

 if (wait_for_doorbell(card, HZ/10) < 0)
  return -1;

 c4outmeml(card->mbase+MBOX_PEEK_POKE, off);
 c4outmeml(card->mbase+DOORBELL, DBELL_ADDR);

 if (wait_for_doorbell(card, HZ/10) < 0)
  return -1;

 c4outmeml(card->mbase+MBOX_PEEK_POKE, value);
 c4outmeml(card->mbase+DOORBELL, DBELL_DATA | DBELL_ADDR);

 return 0;
}
