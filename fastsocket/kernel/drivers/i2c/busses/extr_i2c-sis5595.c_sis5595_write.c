
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ SMB_DAT ;
 scalar_t__ SMB_INDEX ;
 int outb (int ,scalar_t__) ;
 scalar_t__ sis5595_base ;

__attribute__((used)) static void sis5595_write(u8 reg, u8 data)
{
 outb(reg, sis5595_base + SMB_INDEX);
 outb(data, sis5595_base + SMB_DAT);
}
