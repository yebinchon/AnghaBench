
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ptype; char** s0num; char** eazlist; int* sil; int* rch; struct TYPE_11__* next; int isdnloop_lock; struct TYPE_11__** rcard; } ;
typedef TYPE_3__ isdnloop_card ;
struct TYPE_9__ {size_t si1; int phone; } ;
struct TYPE_10__ {TYPE_1__ setup; } ;
struct TYPE_12__ {TYPE_2__ parm; } ;
typedef TYPE_4__ isdn_ctrl ;




 TYPE_3__* cards ;
 int isdnloop_parse_setup (char*,TYPE_4__*) ;
 int* si2bit ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprintf (char*,char*,char*,char) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int
isdnloop_try_call(isdnloop_card * card, char *p, int lch, isdn_ctrl * cmd)
{
 isdnloop_card *cc = cards;
 unsigned long flags;
 int ch;
 int num_match;
 int i;
 char *e;
 char nbuf[32];

 isdnloop_parse_setup(p, cmd);
 while (cc) {
  for (ch = 0; ch < 2; ch++) {

   if ((cc == card) && (ch == lch))
    continue;
   num_match = 0;
   switch (cc->ptype) {
    case 128:
     for (i = 0; i < 3; i++)
      if (!(strcmp(cc->s0num[i], cmd->parm.setup.phone)))
       num_match = 1;
     break;
    case 129:
     e = cc->eazlist[ch];
     while (*e) {
      sprintf(nbuf, "%s%c", cc->s0num[0], *e);
      if (!(strcmp(nbuf, cmd->parm.setup.phone)))
       num_match = 1;
      e++;
     }
   }
   if (num_match) {
    spin_lock_irqsave(&card->isdnloop_lock, flags);

    if (!(cc->rcard[ch])) {

     if (!(si2bit[cmd->parm.setup.si1] & cc->sil[ch])) {
      spin_unlock_irqrestore(&card->isdnloop_lock, flags);
      return 3;
     }

     cc->rcard[ch] = card;
     cc->rch[ch] = lch;
     card->rcard[lch] = cc;
     card->rch[lch] = ch;
     spin_unlock_irqrestore(&card->isdnloop_lock, flags);
     return 0;
    } else {
     spin_unlock_irqrestore(&card->isdnloop_lock, flags);

     if (ch == 1)
      return 1;
    }
   }
  }
  cc = cc->next;
 }
 return 2;
}
