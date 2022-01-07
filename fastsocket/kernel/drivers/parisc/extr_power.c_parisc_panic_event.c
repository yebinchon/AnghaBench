
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int pdc_soft_power_button (int ) ;

__attribute__((used)) static int parisc_panic_event(struct notifier_block *this,
  unsigned long event, void *ptr)
{

 pdc_soft_power_button(0);
 return NOTIFY_DONE;
}
