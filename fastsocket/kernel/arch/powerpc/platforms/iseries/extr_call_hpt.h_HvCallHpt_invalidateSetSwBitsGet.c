
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int HvCall1 (int ,int ) ;
 int HvCall4 (int ,int ,int ,int ,int) ;
 int HvCallHptInvalidateNoSyncICache ;
 int HvCallHptInvalidateSetSwBitsGet ;

__attribute__((used)) static inline u64 HvCallHpt_invalidateSetSwBitsGet(u32 hpteIndex, u8 bitson,
  u8 bitsoff)
{
 u64 compressedStatus;

 compressedStatus = HvCall4(HvCallHptInvalidateSetSwBitsGet,
   hpteIndex, bitson, bitsoff, 1);
 HvCall1(HvCallHptInvalidateNoSyncICache, hpteIndex);
 return compressedStatus;
}
