
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ehca_shca {int ib_device; } ;


 int ehca_err (int *,char*,int) ;

__attribute__((used)) static u8 map_number_of_vls(struct ehca_shca *shca, u32 vl_cap)
{
 switch (vl_cap) {
 case 0x1:
  return 1;
 case 0x2:
  return 2;
 case 0x3:
  return 4;
 case 0x4:
  return 8;
 case 0x5:
  return 15;
 default:
  ehca_err(&shca->ib_device, "invalid Vl Capability: %x.",
    vl_cap);
  return 0;
 }
}
