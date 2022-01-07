
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int outb (int,int) ;
 int outl (int,int) ;
 int pr_debug (char*,int,int,int) ;

void write_pci_config_byte(u8 bus, u8 slot, u8 func, u8 offset, u8 val)
{
 pr_debug("%x writing to %x: %x\n", slot, offset, val);
 outl(0x80000000 | (bus<<16) | (slot<<11) | (func<<8) | offset, 0xcf8);
 outb(val, 0xcfc + (offset&3));
}
