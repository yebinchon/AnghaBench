
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priority_group {scalar_t__ bypassed; struct multipath* m; } ;
struct pgpath {struct priority_group* pg; } ;
struct multipath {unsigned int pg_init_delay_retry; int lock; int pg_init_wait; int process_queued_ios; scalar_t__ queue_io; int pg_init_required; scalar_t__ pg_init_in_progress; int * current_pg; struct pgpath* current_pgpath; int hw_handler_name; } ;


 int DMERR (char*,int,...) ;






 int bypass_pg (struct multipath*,struct priority_group*,int) ;
 int fail_path (struct pgpath*) ;
 int kmultipathd ;
 int pg_init_limit_reached (struct multipath*,struct pgpath*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void pg_init_done(void *data, int errors)
{
 struct pgpath *pgpath = data;
 struct priority_group *pg = pgpath->pg;
 struct multipath *m = pg->m;
 unsigned long flags;
 unsigned delay_retry = 0;


 switch (errors) {
 case 130:
  break;
 case 131:
  if (!m->hw_handler_name) {
   errors = 0;
   break;
  }
  DMERR("Could not failover the device: Handler scsi_dh_%s "
        "Error %d.", m->hw_handler_name, errors);



  fail_path(pgpath);
  break;
 case 133:




  bypass_pg(m, pg, 1);
  break;
 case 128:

  delay_retry = 1;
 case 132:
 case 129:
  if (pg_init_limit_reached(m, pgpath))
   fail_path(pgpath);
  errors = 0;
  break;
 default:





  fail_path(pgpath);
 }

 spin_lock_irqsave(&m->lock, flags);
 if (errors) {
  if (pgpath == m->current_pgpath) {
   DMERR("Could not failover device. Error %d.", errors);
   m->current_pgpath = ((void*)0);
   m->current_pg = ((void*)0);
  }
 } else if (!m->pg_init_required)
  pg->bypassed = 0;

 if (--m->pg_init_in_progress)

  goto out;

 if (!m->pg_init_required)
  m->queue_io = 0;

 m->pg_init_delay_retry = delay_retry;
 queue_work(kmultipathd, &m->process_queued_ios);




 wake_up(&m->pg_init_wait);

out:
 spin_unlock_irqrestore(&m->lock, flags);
}
