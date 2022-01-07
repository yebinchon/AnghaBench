
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void celleb_fake_config_writel(u32 val, void *addr)
{
 __le32 val32;
 __le32 *p = addr;
 val32 = cpu_to_le32(val);
 *p = val32;
}
