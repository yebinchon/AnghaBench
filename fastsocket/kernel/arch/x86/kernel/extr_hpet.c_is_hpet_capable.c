
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_hpet_disable ;
 scalar_t__ hpet_address ;

__attribute__((used)) static inline int is_hpet_capable(void)
{
 return !boot_hpet_disable && hpet_address;
}
