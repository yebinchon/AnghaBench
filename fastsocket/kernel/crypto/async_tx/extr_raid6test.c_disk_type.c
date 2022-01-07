
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char disk_type(int d, int disks)
{
 if (d == disks - 2)
  return 'P';
 else if (d == disks - 1)
  return 'Q';
 else
  return 'D';
}
