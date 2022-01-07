
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;

__attribute__((used)) static int hpet_cpuhp_notify(struct notifier_block *n,
  unsigned long action, void *hcpu)
{
 return NOTIFY_OK;
}
