
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_option_index(long *optlist, long optval)
{
 int i = 1;

 for (; i <= optlist[0]; ++i)
  if (optlist[i] == optval)
   return i;

 return 0;
}
