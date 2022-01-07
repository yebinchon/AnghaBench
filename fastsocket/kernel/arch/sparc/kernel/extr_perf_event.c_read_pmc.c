
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int PIC_UPPER_INDEX ;
 int read_pic (int) ;

__attribute__((used)) static u32 read_pmc(int idx)
{
 u64 val;

 read_pic(val);
 if (idx == PIC_UPPER_INDEX)
  val >>= 32;

 return val & 0xffffffff;
}
