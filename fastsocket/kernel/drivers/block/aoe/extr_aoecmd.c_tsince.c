
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int jiffies ;
 int jiffies_to_usecs (int) ;

__attribute__((used)) static int
tsince(u32 tag)
{
 int n;

 n = jiffies & 0xffff;
 n -= tag & 0xffff;
 if (n < 0)
  n += 1<<16;
 return jiffies_to_usecs(n + 1);
}
