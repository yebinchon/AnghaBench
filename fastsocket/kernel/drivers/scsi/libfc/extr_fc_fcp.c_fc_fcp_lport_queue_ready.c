
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {scalar_t__ state; int qfull; scalar_t__ link_up; } ;


 scalar_t__ LPORT_ST_READY ;

__attribute__((used)) static inline int fc_fcp_lport_queue_ready(struct fc_lport *lport)
{

 return (lport->state == LPORT_ST_READY) &&
  lport->link_up && !lport->qfull;
}
