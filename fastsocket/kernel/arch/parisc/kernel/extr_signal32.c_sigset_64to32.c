
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* sig; } ;
typedef TYPE_1__ sigset_t ;
struct TYPE_6__ {int* sig; } ;
typedef TYPE_2__ compat_sigset_t ;



inline void
sigset_64to32(compat_sigset_t *s32, sigset_t *s64)
{
 s32->sig[0] = s64->sig[0] & 0xffffffffUL;
 s32->sig[1] = (s64->sig[0] >> 32) & 0xffffffffUL;
}
