
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cafe_format_struct {scalar_t__ pixelformat; } ;


 unsigned int N_CAFE_FMTS ;
 struct cafe_format_struct* cafe_formats ;

__attribute__((used)) static struct cafe_format_struct *cafe_find_format(u32 pixelformat)
{
 unsigned i;

 for (i = 0; i < N_CAFE_FMTS; i++)
  if (cafe_formats[i].pixelformat == pixelformat)
   return cafe_formats + i;

 return cafe_formats;
}
