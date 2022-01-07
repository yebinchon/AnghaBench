
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;




 int pseries_add_memory (void*) ;
 int pseries_drconf_memory (void*,unsigned long) ;
 int pseries_remove_memory (void*) ;

__attribute__((used)) static int pseries_memory_notifier(struct notifier_block *nb,
    unsigned long action, void *node)
{
 int err = NOTIFY_OK;

 switch (action) {
 case 129:
  if (pseries_add_memory(node))
   err = NOTIFY_BAD;
  break;
 case 128:
  if (pseries_remove_memory(node))
   err = NOTIFY_BAD;
  break;
 case 131:
 case 130:
  if (pseries_drconf_memory(node, action))
   err = NOTIFY_BAD;
  break;
 default:
  err = NOTIFY_DONE;
  break;
 }
 return err;
}
