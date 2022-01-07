
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ vid; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ch7xxx_ids ;

__attribute__((used)) static char *ch7xxx_get_id(uint8_t vid)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ch7xxx_ids); i++) {
  if (ch7xxx_ids[i].vid == vid)
   return ch7xxx_ids[i].name;
 }

 return ((void*)0);
}
