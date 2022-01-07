
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef enum radeon_family { ____Placeholder_radeon_family } radeon_family ;
struct TYPE_3__ {int min_family; scalar_t__ blockwidth; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* color_formats_table ;

bool r600_fmt_is_valid_texture(u32 format, enum radeon_family family)
{
 if (format >= ARRAY_SIZE(color_formats_table))
  return 0;

 if (family < color_formats_table[format].min_family)
  return 0;

 if (color_formats_table[format].blockwidth > 0)
  return 1;

 return 0;
}
