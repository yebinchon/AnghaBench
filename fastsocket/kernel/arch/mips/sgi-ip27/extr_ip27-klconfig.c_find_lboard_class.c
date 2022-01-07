
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char brd_type; } ;
typedef TYPE_1__ lboard_t ;


 TYPE_1__* KLCF_NEXT (TYPE_1__*) ;
 scalar_t__ KLCLASS (unsigned char) ;

lboard_t * find_lboard_class(lboard_t *start, unsigned char brd_type)
{

 while (start) {
  if (KLCLASS(start->brd_type) == KLCLASS(brd_type))
   return start;
  start = KLCF_NEXT(start);
 }


 return (lboard_t *)((void*)0);
}
