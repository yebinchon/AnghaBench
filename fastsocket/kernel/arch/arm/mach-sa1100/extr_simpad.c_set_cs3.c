
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long CS3BUSTYPE ;


 scalar_t__ CS3_BASE ;
 long cs3_shadow ;

void set_cs3(long value)
{
 *(CS3BUSTYPE *)(CS3_BASE) = cs3_shadow = value;
}
