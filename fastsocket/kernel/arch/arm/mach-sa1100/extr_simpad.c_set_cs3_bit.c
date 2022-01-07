
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CS3BUSTYPE ;


 scalar_t__ CS3_BASE ;
 int cs3_shadow ;

void set_cs3_bit(int value)
{
 cs3_shadow |= value;
 *(CS3BUSTYPE *)(CS3_BASE) = cs3_shadow;
}
