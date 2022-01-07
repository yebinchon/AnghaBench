
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_host {int dummy; } ;


 int PDC_DIMM0_SPD_DEV_ADDRESS ;
 int PDC_DIMM_SPD_SYSTEM_FREQ ;
 scalar_t__ pdc20621_i2c_read (struct ata_host*,int ,int,int*) ;

__attribute__((used)) static int pdc20621_detect_dimm(struct ata_host *host)
{
 u32 data = 0;
 if (pdc20621_i2c_read(host, PDC_DIMM0_SPD_DEV_ADDRESS,
        PDC_DIMM_SPD_SYSTEM_FREQ, &data)) {
  if (data == 100)
   return 100;
 } else
  return 0;

 if (pdc20621_i2c_read(host, PDC_DIMM0_SPD_DEV_ADDRESS, 9, &data)) {
  if (data <= 0x75)
   return 133;
 } else
  return 0;

 return 0;
}
