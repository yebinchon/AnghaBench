
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int blocksize; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* color_formats_table ;

int r600_fmt_get_blocksize(u32 format)
{
 if (format >= ARRAY_SIZE(color_formats_table))
  return 0;

 return color_formats_table[format].blocksize;
}
