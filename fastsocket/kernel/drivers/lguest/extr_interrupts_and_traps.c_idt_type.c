
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int idt_type(u32 lo, u32 hi)
{
 return (hi >> 8) & 0xF;
}
