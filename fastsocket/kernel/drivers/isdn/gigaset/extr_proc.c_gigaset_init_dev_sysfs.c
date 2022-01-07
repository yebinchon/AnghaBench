
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int tty_dev; } ;


 int DEBUG_INIT ;
 int dev_attr_cidmode ;
 scalar_t__ device_create_file (int ,int *) ;
 int gig_dbg (int ,char*) ;
 int pr_err (char*) ;

void gigaset_init_dev_sysfs(struct cardstate *cs)
{
 if (!cs->tty_dev)
  return;

 gig_dbg(DEBUG_INIT, "setting up sysfs");
 if (device_create_file(cs->tty_dev, &dev_attr_cidmode))
  pr_err("could not create sysfs attribute\n");
}
