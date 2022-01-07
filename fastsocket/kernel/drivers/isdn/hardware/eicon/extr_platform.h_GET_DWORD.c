
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline __u32 GET_DWORD(void *addr)
{
 return le32_to_cpu(*(__le32 *)addr);
}
