
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int rebuild_sched_domains () ;

__attribute__((used)) static void topology_work_fn(struct work_struct *work)
{
 rebuild_sched_domains();
}
