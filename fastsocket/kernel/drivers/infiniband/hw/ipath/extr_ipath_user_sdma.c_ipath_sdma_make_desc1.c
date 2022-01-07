
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int __le64 ;


 int cpu_to_le64 (int) ;

__attribute__((used)) static inline __le64 ipath_sdma_make_desc1(u64 addr)
{

 return cpu_to_le64(addr >> 32);
}
