
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;

__attribute__((used)) static inline void PUT_WORD(void *addr, __u16 v)
{
 *(__le16 *)addr = cpu_to_le16(v);
}
