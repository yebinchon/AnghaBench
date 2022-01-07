
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void celleb_fake_config_writeb(u32 val, void *addr)
{
 u8 *p = addr;
 *p = val;
}
