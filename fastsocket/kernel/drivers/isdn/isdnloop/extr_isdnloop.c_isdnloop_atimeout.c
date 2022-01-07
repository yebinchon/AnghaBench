
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* rch; int isdnloop_lock; struct TYPE_5__** rcard; } ;
typedef TYPE_1__ isdnloop_card ;


 int isdnloop_fake (TYPE_1__*,char*,int) ;
 char* isdnloop_unicause (TYPE_1__*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void
isdnloop_atimeout(isdnloop_card * card, int ch)
{
 unsigned long flags;
 char buf[60];

 spin_lock_irqsave(&card->isdnloop_lock, flags);
 if (card->rcard) {
  isdnloop_fake(card->rcard[ch], "DDIS_I", card->rch[ch] + 1);
  card->rcard[ch]->rcard[card->rch[ch]] = ((void*)0);
  card->rcard[ch] = ((void*)0);
 }
 isdnloop_fake(card, "DDIS_I", ch + 1);

 sprintf(buf, "CAU%s", isdnloop_unicause(card, 1, 3));
 isdnloop_fake(card, buf, ch + 1);
 spin_unlock_irqrestore(&card->isdnloop_lock, flags);
}
