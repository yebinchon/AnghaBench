
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {scalar_t__ valid_color; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* color_formats_table ;

bool r600_fmt_is_valid_color(u32 format)
{
 if (format >= ARRAY_SIZE(color_formats_table))
  return 0;

 if (color_formats_table[format].valid_color)
  return 1;

 return 0;
}
