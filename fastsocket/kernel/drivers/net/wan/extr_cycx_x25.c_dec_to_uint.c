
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 scalar_t__ isdigit (unsigned int) ;
 int strlen (unsigned int*) ;

__attribute__((used)) static unsigned dec_to_uint(u8 *str, int len)
{
 unsigned val = 0;

 if (!len)
  len = strlen(str);

 for (; len && isdigit(*str); ++str, --len)
  val = (val * 10) + (*str - (unsigned) '0');

 return val;
}
