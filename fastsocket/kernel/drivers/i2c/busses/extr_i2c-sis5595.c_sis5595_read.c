
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ SMB_DAT ;
 scalar_t__ SMB_INDEX ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 scalar_t__ sis5595_base ;

__attribute__((used)) static u8 sis5595_read(u8 reg)
{
 outb(reg, sis5595_base + SMB_INDEX);
 return inb(sis5595_base + SMB_DAT);
}
