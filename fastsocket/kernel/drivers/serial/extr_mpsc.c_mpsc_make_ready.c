
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; } ;
struct mpsc_port_info {int ready; TYPE_1__ port; } ;


 int mpsc_alloc_ring_mem (struct mpsc_port_info*) ;
 int mpsc_init_hw (struct mpsc_port_info*) ;
 int mpsc_init_rings (struct mpsc_port_info*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int mpsc_make_ready(struct mpsc_port_info *pi)
{
 int rc;

 pr_debug("mpsc_make_ready[%d]: Making cltr ready\n", pi->port.line);

 if (!pi->ready) {
  mpsc_init_hw(pi);
  if ((rc = mpsc_alloc_ring_mem(pi)))
   return rc;
  mpsc_init_rings(pi);
  pi->ready = 1;
 }

 return 0;
}
