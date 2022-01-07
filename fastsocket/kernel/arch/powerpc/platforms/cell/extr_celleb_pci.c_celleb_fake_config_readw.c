
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u16 celleb_fake_config_readw(void *addr)
{
 __le16 *p = addr;
 return le16_to_cpu(*p);
}
