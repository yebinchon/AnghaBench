
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int EIO ;
 int __check_latch (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int __wait_latch(u16 port, u8 val)
{
 unsigned int i;

 for (i = 0; i < 20; i++) {
  if (!__check_latch(port, val))
   return 0;
  udelay(5);
 }

 return -EIO;
}
