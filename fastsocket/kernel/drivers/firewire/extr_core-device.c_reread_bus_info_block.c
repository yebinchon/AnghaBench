
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fw_device {scalar_t__* config_rom; } ;


 scalar_t__ RCODE_COMPLETE ;
 int REREAD_BIB_CHANGED ;
 int REREAD_BIB_ERROR ;
 int REREAD_BIB_GONE ;
 int REREAD_BIB_UNCHANGED ;
 scalar_t__ read_rom (struct fw_device*,int,int,scalar_t__*) ;

__attribute__((used)) static int reread_bus_info_block(struct fw_device *device, int generation)
{
 u32 q;
 int i;

 for (i = 0; i < 6; i++) {
  if (read_rom(device, generation, i, &q) != RCODE_COMPLETE)
   return REREAD_BIB_ERROR;

  if (i == 0 && q == 0)
   return REREAD_BIB_GONE;

  if (q != device->config_rom[i])
   return REREAD_BIB_CHANGED;
 }

 return REREAD_BIB_UNCHANGED;
}
