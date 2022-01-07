
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int raw_smp_processor_id () ;
 int sync_buffer (int ) ;

__attribute__((used)) static int
task_exit_notify(struct notifier_block *self, unsigned long val, void *data)
{



 sync_buffer(raw_smp_processor_id());
 return 0;
}
