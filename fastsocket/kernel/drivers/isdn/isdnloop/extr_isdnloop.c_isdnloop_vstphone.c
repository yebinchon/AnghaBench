
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptype; char** s0num; } ;
typedef TYPE_1__ isdnloop_card ;




 int printk (char*) ;
 int sprintf (char*,char*,char*,char) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
isdnloop_vstphone(isdnloop_card * card, char *phone, int caller)
{
 int i;
 static char nphone[30];

 if (!card) {
  printk("BUG!!!\n");
  return "";
 }
 switch (card->ptype) {
  case 128:
   if (caller) {
    for (i = 0; i < 2; i++)
     if (!(strcmp(card->s0num[i], phone)))
      return (phone);
    return (card->s0num[0]);
   }
   return (phone);
   break;
  case 129:
   if (caller) {
    sprintf(nphone, "%s%c", card->s0num[0], phone[0]);
    return (nphone);
   } else
    return (&phone[strlen(phone) - 1]);
   break;
 }
 return "";
}
