
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int tty_dev; } ;


 int DEBUG_INIT ;
 int dev_attr_cidmode ;
 int device_remove_file (int ,int *) ;
 int gig_dbg (int ,char*) ;

void gigaset_free_dev_sysfs(struct cardstate *cs)
{
 if (!cs->tty_dev)
  return;

 gig_dbg(DEBUG_INIT, "removing sysfs entries");
 device_remove_file(cs->tty_dev, &dev_attr_cidmode);
}
