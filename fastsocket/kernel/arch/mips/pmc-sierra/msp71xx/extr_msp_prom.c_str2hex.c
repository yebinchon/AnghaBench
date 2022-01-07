
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int str2hexnum (int ) ;

__attribute__((used)) static inline unsigned long str2hex(unsigned char *str)
{
 int value = 0;

 while (*str) {
  value = value << 4;
  value |= str2hexnum(*str++);
 }

 return value;
}
