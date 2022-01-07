
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct HvCallPci_DsaAddr {int subBusNumber; int deviceId; int busNumber; } ;


 scalar_t__ HvCall3 (int ,scalar_t__,scalar_t__,int ) ;
 int HvCallPciGetDeviceInfo ;

__attribute__((used)) static inline u64 HvCallPci_getDeviceInfo(u16 busNumberParm, u8 subBusParm,
  u8 deviceNumberParm, u64 parms, u32 sizeofParms)
{
 struct HvCallPci_DsaAddr dsa;

 *((u64*)&dsa) = 0;

 dsa.busNumber = busNumberParm;
 dsa.subBusNumber = subBusParm;
 dsa.deviceId = deviceNumberParm << 4;

 return HvCall3(HvCallPciGetDeviceInfo, *(u64*)&dsa, parms, sizeofParms);
}
