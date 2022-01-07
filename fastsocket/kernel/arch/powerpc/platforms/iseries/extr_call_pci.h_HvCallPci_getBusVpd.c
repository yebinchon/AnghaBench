
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int HvCall4 (int ,int ,int,int ,int ) ;
 int HvCallPciGetCardVpd ;
 int HvCallPci_BusVpd ;

__attribute__((used)) static inline int HvCallPci_getBusVpd(u16 busNumParm, u64 destParm,
  u16 sizeParm)
{
 u64 xRc = HvCall4(HvCallPciGetCardVpd, busNumParm, destParm,
   sizeParm, HvCallPci_BusVpd);
 if (xRc == -1)
  return -1;
 else
  return xRc & 0xFFFF;
}
