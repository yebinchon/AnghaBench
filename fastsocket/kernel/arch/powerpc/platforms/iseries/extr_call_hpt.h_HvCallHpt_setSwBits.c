
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int HvCall3 (int ,int ,int ,int ) ;
 int HvCallHptSetSwBits ;

__attribute__((used)) static inline void HvCallHpt_setSwBits(u32 hpteIndex, u8 bitson, u8 bitsoff)
{
 HvCall3(HvCallHptSetSwBits, hpteIndex, bitson, bitsoff);
}
