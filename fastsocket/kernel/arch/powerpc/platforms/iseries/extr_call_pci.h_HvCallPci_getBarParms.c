
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct HvCallPci_DsaAddr {void* barNumber; void* deviceId; void* subBusNumber; int busNumber; } ;


 scalar_t__ HvCall3 (int ,scalar_t__,scalar_t__,int ) ;
 int HvCallPciGetBarParms ;

__attribute__((used)) static inline u64 HvCallPci_getBarParms(u16 busNumberParm, u8 subBusParm,
  u8 deviceIdParm, u8 barNumberParm, u64 parms, u32 sizeofParms)
{
 struct HvCallPci_DsaAddr dsa;

 *((u64*)&dsa) = 0;

 dsa.busNumber = busNumberParm;
 dsa.subBusNumber = subBusParm;
 dsa.deviceId = deviceIdParm;
 dsa.barNumber = barNumberParm;

 return HvCall3(HvCallPciGetBarParms, *(u64*)&dsa, parms, sizeofParms);
}
