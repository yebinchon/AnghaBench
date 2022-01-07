
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int MACHINE_PANICED ;
 int NOTIFY_DONE ;
 int OMAP_LPG1_LCR ;
 int OMAP_LPG1_PMR ;
 int machine_state ;
 int omap_writeb (int,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int panic_event(struct notifier_block *this, unsigned long event,
  void *ptr)
{
 if (test_and_set_bit(MACHINE_PANICED, &machine_state))
  return NOTIFY_DONE;


 omap_writeb(0x78, OMAP_LPG1_LCR);
 omap_writeb(0x01, OMAP_LPG1_PMR);

 return NOTIFY_DONE;
}
