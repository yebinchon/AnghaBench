
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le16 ;


 int cpu_to_le16 (int ) ;

__attribute__((used)) static inline void celleb_fake_config_writew(u32 val, void *addr)
{
 __le16 val16;
 __le16 *p = addr;
 val16 = cpu_to_le16(val);
 *p = val16;
}
