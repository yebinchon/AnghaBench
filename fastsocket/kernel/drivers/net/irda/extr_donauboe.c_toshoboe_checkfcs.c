
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef scalar_t__ __u16 ;


 scalar_t__ GOOD_FCS ;
 scalar_t__ INIT_FCS ;
 scalar_t__ irda_fcs (scalar_t__,int ) ;

__attribute__((used)) static int
toshoboe_checkfcs (unsigned char *buf, int len)
{
  int i;
  union
  {
    __u16 value;
    __u8 bytes[2];
  }
  fcs;

  fcs.value = INIT_FCS;

  for (i = 0; i < len; ++i)
    fcs.value = irda_fcs (fcs.value, *(buf++));

  return (fcs.value == GOOD_FCS);
}
