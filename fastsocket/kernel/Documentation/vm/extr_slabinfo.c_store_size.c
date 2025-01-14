
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static int store_size(char *buffer, unsigned long value)
{
 unsigned long divisor = 1;
 char trailer = 0;
 int n;

 if (value > 1000000000UL) {
  divisor = 100000000UL;
  trailer = 'G';
 } else if (value > 1000000UL) {
  divisor = 100000UL;
  trailer = 'M';
 } else if (value > 1000UL) {
  divisor = 100;
  trailer = 'K';
 }

 value /= divisor;
 n = sprintf(buffer, "%ld",value);
 if (trailer) {
  buffer[n] = trailer;
  n++;
  buffer[n] = 0;
 }
 if (divisor != 1) {
  memmove(buffer + n - 2, buffer + n - 3, 4);
  buffer[n-2] = '.';
  n++;
 }
 return n;
}
