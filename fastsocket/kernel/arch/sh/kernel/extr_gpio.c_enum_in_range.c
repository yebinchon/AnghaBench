
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinmux_range {scalar_t__ begin; scalar_t__ end; } ;
typedef scalar_t__ pinmux_enum_t ;



__attribute__((used)) static int enum_in_range(pinmux_enum_t enum_id, struct pinmux_range *r)
{
 if (enum_id < r->begin)
  return 0;

 if (enum_id > r->end)
  return 0;

 return 1;
}
