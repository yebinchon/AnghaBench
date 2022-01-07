
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (int) ;
 int outl (int,int) ;
 int pr_debug (char*,int,int,int) ;

u8 read_pci_config_byte(u8 bus, u8 slot, u8 func, u8 offset)
{
 u8 v;
 outl(0x80000000 | (bus<<16) | (slot<<11) | (func<<8) | offset, 0xcf8);
 v = inb(0xcfc + (offset&3));
 pr_debug("%x reading 1 from %x: %x\n", slot, offset, v);
 return v;
}
