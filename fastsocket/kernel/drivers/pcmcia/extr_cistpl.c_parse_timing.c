
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {void* reserved; void* rsvscale; void* ready; void* rdyscale; void* wait; void* waitscale; } ;
typedef TYPE_1__ cistpl_timing_t ;


 void* SPEED_CVT (int) ;
 void** exponent ;

__attribute__((used)) static u_char *parse_timing(u_char *p, u_char *q,
       cistpl_timing_t *timing)
{
    u_char scale;

    if (p == q) return ((void*)0);
    scale = *p;
    if ((scale & 3) != 3) {
 if (++p == q) return ((void*)0);
 timing->wait = SPEED_CVT(*p);
 timing->waitscale = exponent[scale & 3];
    } else
 timing->wait = 0;
    scale >>= 2;
    if ((scale & 7) != 7) {
 if (++p == q) return ((void*)0);
 timing->ready = SPEED_CVT(*p);
 timing->rdyscale = exponent[scale & 7];
    } else
 timing->ready = 0;
    scale >>= 3;
    if (scale != 7) {
 if (++p == q) return ((void*)0);
 timing->reserved = SPEED_CVT(*p);
 timing->rsvscale = exponent[scale];
    } else
 timing->reserved = 0;
    p++;
    return p;
}
