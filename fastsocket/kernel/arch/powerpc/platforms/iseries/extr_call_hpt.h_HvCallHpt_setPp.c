
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int HvCall2 (int ,int ,int ) ;
 int HvCallHptSetPp ;

__attribute__((used)) static inline void HvCallHpt_setPp(u32 hpteIndex, u8 value)
{
 HvCall2(HvCallHptSetPp, hpteIndex, value);
}
