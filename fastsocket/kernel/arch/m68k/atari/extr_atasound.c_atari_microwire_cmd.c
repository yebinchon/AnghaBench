
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; int data; } ;


 int MW_LM1992_ADDR ;
 TYPE_1__ tt_microwire ;

void atari_microwire_cmd (int cmd)
{
 tt_microwire.mask = 0x7ff;
 tt_microwire.data = MW_LM1992_ADDR | cmd;


 while( tt_microwire.mask != 0x7ff)
  ;
}
