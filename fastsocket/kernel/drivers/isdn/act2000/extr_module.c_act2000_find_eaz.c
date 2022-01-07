
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msn_entry {char eaz; char* msn; struct msn_entry* next; } ;
struct TYPE_3__ {struct msn_entry* msn_list; } ;
typedef TYPE_1__ act2000_card ;



char *
act2000_find_eaz(act2000_card *card, char eaz)
{
        struct msn_entry *p = card->msn_list;

 while (p) {
  if (p->eaz == eaz)
   return(p->msn);
  p = p->next;
 }
 return("\0");
}
