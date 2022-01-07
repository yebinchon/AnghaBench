
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int appldata_expire_count ;
 int appldata_wq ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_set (int *,int ) ;
 int num_online_cpus () ;
 int queue_work (int ,struct work_struct*) ;

__attribute__((used)) static void appldata_timer_function(unsigned long data)
{
 if (atomic_dec_and_test(&appldata_expire_count)) {
  atomic_set(&appldata_expire_count, num_online_cpus());
  queue_work(appldata_wq, (struct work_struct *) data);
 }
}
