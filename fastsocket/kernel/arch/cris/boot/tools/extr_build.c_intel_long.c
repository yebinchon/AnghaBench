
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long* b; long l; } ;
typedef TYPE_1__ conv ;



long intel_long(long l)
{
 conv t;

 t.b[0] = l & 0xff; l >>= 8;
 t.b[1] = l & 0xff; l >>= 8;
 t.b[2] = l & 0xff; l >>= 8;
 t.b[3] = l & 0xff; l >>= 8;
 return t.l;
}
