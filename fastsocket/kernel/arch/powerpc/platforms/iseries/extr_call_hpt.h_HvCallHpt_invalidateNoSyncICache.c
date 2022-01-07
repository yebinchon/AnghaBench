
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HvCall1 (int ,int ) ;
 int HvCallHptInvalidateNoSyncICache ;

__attribute__((used)) static inline void HvCallHpt_invalidateNoSyncICache(u32 hpteIndex)
{
 HvCall1(HvCallHptInvalidateNoSyncICache, hpteIndex);
}
