
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctr; } ;
struct TYPE_4__ {TYPE_1__ pc; } ;
struct parport_state {TYPE_2__ u; } ;
struct parport {int dummy; } ;


 int CONTROL (struct parport*) ;
 int parport_writeb (int ,int ) ;

void parport_gsc_restore_state(struct parport *p, struct parport_state *s)
{
 parport_writeb (s->u.pc.ctr, CONTROL (p));
}
