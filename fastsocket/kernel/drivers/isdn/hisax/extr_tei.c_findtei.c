
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tei; } ;
struct TYPE_3__ {struct PStack** stlistp; } ;
struct PStack {struct PStack* next; TYPE_2__ l2; TYPE_1__ l1; } ;



__attribute__((used)) static struct PStack *
findtei(struct PStack *st, int tei)
{
 struct PStack *ptr = *(st->l1.stlistp);

 if (tei == 127)
  return (((void*)0));

 while (ptr)
  if (ptr->l2.tei == tei)
   return (ptr);
  else
   ptr = ptr->next;
 return (((void*)0));
}
