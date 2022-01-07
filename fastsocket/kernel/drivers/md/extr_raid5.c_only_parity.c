
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int only_parity(int raid_disk, int algo, int raid_disks, int max_degraded)
{
 switch (algo) {
 case 132:
  if (raid_disk < max_degraded)
   return 1;
  break;
 case 130:
  if (raid_disk >= raid_disks - max_degraded)
   return 1;
  break;
 case 131:
  if (raid_disk == 0 ||
      raid_disk == raid_disks - 1)
   return 1;
  break;
 case 134:
 case 129:
 case 133:
 case 128:
  if (raid_disk == raid_disks - 1)
   return 1;
 }
 return 0;
}
