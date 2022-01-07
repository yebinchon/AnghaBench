
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void PUT_DWORD(void *addr, __u32 v)
{
 *(__le32 *)addr = cpu_to_le32(v);
}
