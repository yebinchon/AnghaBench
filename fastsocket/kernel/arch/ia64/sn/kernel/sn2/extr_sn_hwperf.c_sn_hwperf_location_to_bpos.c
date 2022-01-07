
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char*,char*,int*,char*,int*,int*,...) ;

__attribute__((used)) static int sn_hwperf_location_to_bpos(char *location,
 int *rack, int *bay, int *slot, int *slab)
{
 char type;


 if (sscanf(location, "%03d%c%02d#%d",
  rack, &type, bay, slab) == 4)
  *slot = 0;
 else
 if (sscanf(location, "%03d%c%02d^%02d#%d",
  rack, &type, bay, slot, slab) != 5)
  return -1;

 return 0;
}
