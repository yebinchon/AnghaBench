
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char str2hexnum(unsigned char c)
{
 if (c >= '0' && c <= '9')
  return c - '0';
 if (c >= 'a' && c <= 'f')
  return c - 'a' + 10;
 return 0;
}
