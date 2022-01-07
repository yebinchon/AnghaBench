
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int find_slot(void **tab, int max)
{
 int i;
 for(i=0;i<max;i++)
  if(!(tab[i]))
   return i;
 return -1;
}
