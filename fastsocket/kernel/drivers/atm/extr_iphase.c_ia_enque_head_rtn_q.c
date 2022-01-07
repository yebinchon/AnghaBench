
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* tail; } ;
typedef TYPE_1__ IARTN_Q ;



__attribute__((used)) static void ia_enque_head_rtn_q (IARTN_Q *que, IARTN_Q * data)
{
   data->next = ((void*)0);
   if (que->next == ((void*)0))
      que->next = que->tail = data;
   else {
      data->next = que->next;
      que->next = data;
   }
   return;
}
