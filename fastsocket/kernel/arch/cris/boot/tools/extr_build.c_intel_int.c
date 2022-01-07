
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* b; int i; } ;
typedef TYPE_1__ conv ;



int intel_int(int i)
{
 conv t;

 t.b[0] = i & 0xff; i >>= 8;
        t.b[1] = i & 0xff; i >>= 8;
        t.b[2] = i & 0xff; i >>= 8;
        t.b[3] = i & 0xff; i >>= 8;
        return t.i;
}
