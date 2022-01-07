
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char str2hexnum (int ) ;

__attribute__((used)) static inline void str2eaddr(unsigned char *ea, unsigned char *str)
{
 int i;

 for (i = 0; i < 6; i++) {
  unsigned char num;

  if((*str == '.') || (*str == ':'))
   str++;
  num = str2hexnum(*str++) << 4;
  num |= (str2hexnum(*str++));
  ea[i] = num;
 }
}
