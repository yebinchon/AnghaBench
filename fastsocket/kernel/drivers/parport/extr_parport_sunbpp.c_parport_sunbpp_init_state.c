
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctr; int ecr; } ;
struct TYPE_4__ {TYPE_1__ pc; } ;
struct parport_state {TYPE_2__ u; } ;
struct pardevice {int dummy; } ;



__attribute__((used)) static void parport_sunbpp_init_state(struct pardevice *dev, struct parport_state *s)
{
 s->u.pc.ctr = 0xc;
 s->u.pc.ecr = 0x0;
}
