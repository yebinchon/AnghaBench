
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int virt_to_bus (void*) ;

__attribute__((used)) static inline u32 Virtual_to_Bus(void *VirtualAddress)
{
 return (u32) virt_to_bus(VirtualAddress);
}
