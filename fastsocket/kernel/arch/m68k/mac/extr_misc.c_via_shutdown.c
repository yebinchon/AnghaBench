
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdelay (int) ;
 size_t rBufB ;
 scalar_t__ rbv_present ;
 size_t vBufB ;
 size_t vDirB ;
 int* via2 ;

__attribute__((used)) static void via_shutdown(void)
{
 if (rbv_present) {
  via2[rBufB] &= ~0x04;
 } else {

  via2[vDirB] |= 0x04;

  via2[vBufB] &= ~0x04;
  mdelay(1000);
 }
}
