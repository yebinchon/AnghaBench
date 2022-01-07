
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void *nubus_rom_addr(int slot)
{




 return (void *)(0xF1000000+(slot<<24));
}
