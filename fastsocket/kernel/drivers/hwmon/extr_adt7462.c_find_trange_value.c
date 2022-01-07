
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int NUM_TRANGE_VALUES ;
 int* trange_values ;

__attribute__((used)) static int find_trange_value(int trange)
{
 int i;

 for (i = 0; i < NUM_TRANGE_VALUES; i++)
  if (trange_values[i] == trange)
   return i;

 return -ENODEV;
}
