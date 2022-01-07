
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* IoAdapters ;

__attribute__((used)) static int diva_find_free_adapters(int base, int nr)
{
 int i;

 for (i = 0; i < nr; i++) {
  if (IoAdapters[base + i]) {
   return (-1);
  }
 }

 return (0);
}
