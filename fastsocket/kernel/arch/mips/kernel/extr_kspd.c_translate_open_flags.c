
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sp; unsigned int ap; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* open_flags_table ;

__attribute__((used)) static unsigned int translate_open_flags(int flags)
{
 int i;
 unsigned int ret = 0;

 for (i = 0; i < ARRAY_SIZE(open_flags_table); i++) {
  if( (flags & open_flags_table[i].sp) ) {
   ret |= open_flags_table[i].ap;
  }
 }

 return ret;
}
