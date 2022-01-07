
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int val2fld(int wd, int mask)
{
 int lsbmask;

 if (!mask)
  return 0;
 lsbmask = mask ^ (mask & (mask - 1));
 wd *= lsbmask;
 return wd;
}
