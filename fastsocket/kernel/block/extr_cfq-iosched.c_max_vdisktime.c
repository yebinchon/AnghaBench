
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ s64 ;



__attribute__((used)) static inline u64 max_vdisktime(u64 min_vdisktime, u64 vdisktime)
{
 s64 delta = (s64)(vdisktime - min_vdisktime);
 if (delta > 0)
  min_vdisktime = vdisktime;

 return min_vdisktime;
}
