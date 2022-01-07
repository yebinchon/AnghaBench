
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PIC_UPPER_INDEX ;
 int read_pic (int) ;
 int write_pic (int) ;

__attribute__((used)) static void write_pmc(int idx, u64 val)
{
 u64 shift, mask, pic;

 shift = 0;
 if (idx == PIC_UPPER_INDEX)
  shift = 32;

 mask = ((u64) 0xffffffff) << shift;
 val <<= shift;

 read_pic(pic);
 pic &= ~mask;
 pic |= val;
 write_pic(pic);
}
