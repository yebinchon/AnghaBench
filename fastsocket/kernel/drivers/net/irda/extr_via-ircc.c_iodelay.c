
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (int) ;

__attribute__((used)) static void iodelay(int udelay)
{
 u8 data;
 int i;

 for (i = 0; i < udelay; i++) {
  data = inb(0x80);
 }
}
