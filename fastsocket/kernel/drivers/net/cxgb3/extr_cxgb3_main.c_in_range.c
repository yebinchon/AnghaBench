
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int in_range(int val, int lo, int hi)
{
 return val < 0 || (val <= hi && val >= lo);
}
