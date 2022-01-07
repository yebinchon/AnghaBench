
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int HvLpIndex ;


 int HvCall2 (int ,int ,int ) ;
 int HvCallSmGet64BitsOfAccessMap ;

__attribute__((used)) static inline u64 HvCallSm_get64BitsOfAccessMap(HvLpIndex lpIndex,
  u64 indexIntoBitMap)
{
 return HvCall2(HvCallSmGet64BitsOfAccessMap, lpIndex, indexIntoBitMap);
}
