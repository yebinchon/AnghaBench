
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int u16 ;
struct HvCallPci_LoadReturn {scalar_t__ rc; int value; } ;
struct HvCallPci_DsaAddr {void* deviceId; void* subBusNumber; int busNumber; } ;


 int HvCall3Ret16 (int ,struct HvCallPci_LoadReturn*,scalar_t__,int ,int ) ;
 int HvCallPciConfigLoad32 ;

__attribute__((used)) static inline u64 HvCallPci_configLoad32(u16 busNumber, u8 subBusNumber,
  u8 deviceId, u32 offset, u32 *value)
{
 struct HvCallPci_DsaAddr dsa;
 struct HvCallPci_LoadReturn retVal;

 *((u64*)&dsa) = 0;

 dsa.busNumber = busNumber;
 dsa.subBusNumber = subBusNumber;
 dsa.deviceId = deviceId;

 HvCall3Ret16(HvCallPciConfigLoad32, &retVal, *(u64 *)&dsa, offset, 0);

 *value = retVal.value;

 return retVal.rc;
}
