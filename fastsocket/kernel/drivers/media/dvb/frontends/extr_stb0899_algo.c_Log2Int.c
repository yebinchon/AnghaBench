
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;

__attribute__((used)) static long Log2Int(int number)
{
 int i;

 i = 0;
 while ((1 << i) <= abs(number))
  i++;

 if (number == 0)
  i = 1;

 return i - 1;
}
