
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int ioasc; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int IPR_IOASC_IOASC_MASK ;
 TYPE_1__* ipr_error_table ;

__attribute__((used)) static u32 ipr_get_error(u32 ioasc)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ipr_error_table); i++)
  if (ipr_error_table[i].ioasc == (ioasc & IPR_IOASC_IOASC_MASK))
   return i;

 return 0;
}
