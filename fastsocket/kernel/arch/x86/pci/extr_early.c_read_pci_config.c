
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int inl (int) ;
 int outl (int,int) ;
 int pr_debug (char*,int,int,int) ;

u32 read_pci_config(u8 bus, u8 slot, u8 func, u8 offset)
{
 u32 v;
 outl(0x80000000 | (bus<<16) | (slot<<11) | (func<<8) | offset, 0xcf8);
 v = inl(0xcfc);
 if (v != 0xffffffff)
  pr_debug("%x reading 4 from %x: %x\n", slot, offset, v);
 return v;
}
