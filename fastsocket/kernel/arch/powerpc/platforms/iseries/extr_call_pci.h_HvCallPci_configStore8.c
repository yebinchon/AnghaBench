
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct HvCallPci_DsaAddr {void* deviceId; void* subBusNumber; int busNumber; } ;


 scalar_t__ HvCall4 (int ,scalar_t__,int ,void*,int ) ;
 int HvCallPciConfigStore8 ;

__attribute__((used)) static inline u64 HvCallPci_configStore8(u16 busNumber, u8 subBusNumber,
  u8 deviceId, u32 offset, u8 value)
{
 struct HvCallPci_DsaAddr dsa;

 *((u64*)&dsa) = 0;

 dsa.busNumber = busNumber;
 dsa.subBusNumber = subBusNumber;
 dsa.deviceId = deviceId;

 return HvCall4(HvCallPciConfigStore8, *(u64 *)&dsa, offset, value, 0);
}
