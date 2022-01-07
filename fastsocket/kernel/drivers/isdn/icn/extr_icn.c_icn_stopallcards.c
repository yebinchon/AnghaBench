
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ icn_card ;


 TYPE_1__* cards ;
 int icn_stopcard (TYPE_1__*) ;

__attribute__((used)) static void
icn_stopallcards(void)
{
 icn_card *p = cards;

 while (p) {
  icn_stopcard(p);
  p = p->next;
 }
}
