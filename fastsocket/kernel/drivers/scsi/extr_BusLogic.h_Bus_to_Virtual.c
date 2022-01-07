
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ bus_to_virt (int ) ;

__attribute__((used)) static inline void *Bus_to_Virtual(u32 BusAddress)
{
 return (void *) bus_to_virt(BusAddress);
}
