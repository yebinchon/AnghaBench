
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 celleb_fake_config_readb(void *addr)
{
 u8 *p = addr;
 return *p;
}
