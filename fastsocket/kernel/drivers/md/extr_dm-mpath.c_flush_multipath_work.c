
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int dummy; } ;


 int flush_scheduled_work () ;
 int flush_workqueue (int ) ;
 int kmpath_handlerd ;
 int kmultipathd ;
 int multipath_wait_for_pg_init_completion (struct multipath*) ;

__attribute__((used)) static void flush_multipath_work(struct multipath *m)
{
 flush_workqueue(kmpath_handlerd);
 multipath_wait_for_pg_init_completion(m);
 flush_workqueue(kmultipathd);
 flush_scheduled_work();
}
