
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;


 int IB_MTU_1024 ;
 int IB_MTU_2048 ;
 int IB_MTU_256 ;
 int IB_MTU_4096 ;
 int IB_MTU_512 ;

__attribute__((used)) static enum ib_mtu ocrdma_mtu_int_to_enum(u16 mtu)
{
 switch (mtu) {
 case 256:
  return IB_MTU_256;
 case 512:
  return IB_MTU_512;
 case 1024:
  return IB_MTU_1024;
 case 2048:
  return IB_MTU_2048;
 case 4096:
  return IB_MTU_4096;
 default:
  return IB_MTU_1024;
 }
}
