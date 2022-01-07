
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pgpath {int pg; } ;
struct multipath {int pg_init_required; int queue_io; scalar_t__ pg_init_count; scalar_t__ hw_handler_name; int current_pg; } ;



__attribute__((used)) static void __switch_pg(struct multipath *m, struct pgpath *pgpath)
{
 m->current_pg = pgpath->pg;


 if (m->hw_handler_name) {
  m->pg_init_required = 1;
  m->queue_io = 1;
 } else {
  m->pg_init_required = 0;
  m->queue_io = 0;
 }

 m->pg_init_count = 0;
}
