
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;


 int pseries_add_processor (void*) ;
 int pseries_remove_processor (void*) ;

__attribute__((used)) static int pseries_smp_notifier(struct notifier_block *nb,
    unsigned long action, void *node)
{
 int err = NOTIFY_OK;

 switch (action) {
 case 129:
  if (pseries_add_processor(node))
   err = NOTIFY_BAD;
  break;
 case 128:
  pseries_remove_processor(node);
  break;
 default:
  err = NOTIFY_DONE;
  break;
 }
 return err;
}
