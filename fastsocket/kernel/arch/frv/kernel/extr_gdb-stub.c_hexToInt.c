
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int hex (char) ;

__attribute__((used)) static int hexToInt(char **ptr, unsigned long *_value)
{
 int count = 0, ch;

 *_value = 0;
 while (**ptr) {
  ch = hex(**ptr);
  if (ch < 0)
   break;

  *_value = (*_value << 4) | ((uint8_t) ch & 0xf);
  count++;

  (*ptr)++;
 }

 return count;
}
