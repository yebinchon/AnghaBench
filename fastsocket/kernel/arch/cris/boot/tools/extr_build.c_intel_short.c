
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {short* b; short* s; } ;
typedef TYPE_1__ conv ;



short intel_short(short l)
{
 conv t;

 t.b[0] = l & 0xff; l >>= 8;
 t.b[1] = l & 0xff; l >>= 8;
 return t.s[0];
}
