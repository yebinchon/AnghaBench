
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ehca_shca {int ib_device; } ;
typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;


 int IB_MTU_1024 ;
 int IB_MTU_2048 ;
 int IB_MTU_256 ;
 int IB_MTU_4096 ;
 int IB_MTU_512 ;
 int ehca_err (int *,char*,int) ;

__attribute__((used)) static enum ib_mtu map_mtu(struct ehca_shca *shca, u32 fw_mtu)
{
 switch (fw_mtu) {
 case 0x1:
  return IB_MTU_256;
 case 0x2:
  return IB_MTU_512;
 case 0x3:
  return IB_MTU_1024;
 case 0x4:
  return IB_MTU_2048;
 case 0x5:
  return IB_MTU_4096;
 default:
  ehca_err(&shca->ib_device, "Unknown MTU size: %x.",
    fw_mtu);
  return 0;
 }
}
