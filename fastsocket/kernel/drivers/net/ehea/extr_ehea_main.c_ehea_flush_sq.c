
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehea_port_res {int sq_skba_size; int swqe_ll_count; int swqe_avail; } ;
struct ehea_port {int num_def_qps; int swqe_avail_wq; struct ehea_port_res* port_res; } ;


 int atomic_read (int *) ;
 int ehea_error (char*) ;
 int msecs_to_jiffies (int) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void ehea_flush_sq(struct ehea_port *port)
{
 int i;

 for (i = 0; i < port->num_def_qps; i++) {
  struct ehea_port_res *pr = &port->port_res[i];
  int swqe_max = pr->sq_skba_size - 2 - pr->swqe_ll_count;
  int ret;

  ret = wait_event_timeout(port->swqe_avail_wq,
    atomic_read(&pr->swqe_avail) >= swqe_max,
    msecs_to_jiffies(100));

  if (!ret) {
   ehea_error("WARNING: sq not flushed completely");
   break;
  }
 }
}
