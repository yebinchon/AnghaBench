
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 Virtual_to_32Bit_Virtual(void *VirtualAddress)
{
 return (u32) (unsigned long) VirtualAddress;
}
