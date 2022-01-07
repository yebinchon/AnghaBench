
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int popcount8(u8 c)
{
 int ret = 0;

 for ( ; c; c>>=1)
  ret += c & 1;
 return ret;
}
