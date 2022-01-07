
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int sprint_frac(char *dest, int value, int denom)
{
 int frac = value % denom;
 int result = sprintf(dest, "%d", value / denom);

 if (frac == 0)
  return result;
 dest[result++] = '.';

 do {
  denom /= 10;
  sprintf(dest + result, "%d", frac / denom);
  result++;
  frac %= denom;
 } while (frac);

 dest[result++] = '\0';
 return result;
}
