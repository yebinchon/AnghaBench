
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLE ;

__attribute__((used)) static inline int
dle_count(unsigned char *buf, int len)
{
 int count = 0;

 while (len--)
  if (*buf++ == DLE)
   count++;
 return count;
}
