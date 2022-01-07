
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;
 scalar_t__ isxdigit (char) ;
 char tolower (char) ;

__attribute__((used)) static int pure_hex(char **cp, unsigned int *val, int min_digit,
      int max_digit, int max_val)
{
 int diff;
 unsigned int value;

 diff = 0;
 *val = 0;

 while (isxdigit(**cp) && (diff <= max_digit)) {

  if (isdigit(**cp))
   value = **cp - '0';
  else
   value = tolower(**cp) - 'a' + 10;
  *val = *val * 16 + value;
  (*cp)++;
  diff++;
 }

 if ((diff < min_digit) || (diff > max_digit) || (*val > max_val))
  return 1;

 return 0;
}
