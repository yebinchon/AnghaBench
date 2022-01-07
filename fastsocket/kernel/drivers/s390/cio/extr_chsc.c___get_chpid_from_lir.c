
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int EINVAL ;

__attribute__((used)) static int
__get_chpid_from_lir(void *data)
{
 struct lir {
  u8 iq;
  u8 ic;
  u16 sci;

  u32 indesc[28];

  u32 andesc[28];

  u32 isinfo[28];
 } __attribute__ ((packed)) *lir;

 lir = data;
 if (!(lir->iq&0x80))

  return -EINVAL;
 if (!(lir->indesc[0]&0xc0000000))

  return -EINVAL;
 if (!(lir->indesc[0]&0x10000000))

  return -EINVAL;


 return (u16) (lir->indesc[0]&0x000000ff);
}
