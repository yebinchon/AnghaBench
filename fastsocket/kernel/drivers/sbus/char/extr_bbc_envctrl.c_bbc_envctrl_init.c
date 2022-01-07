
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device {TYPE_1__* node; } ;
struct bbc_i2c_bus {int dummy; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int attach_one_fan (struct bbc_i2c_bus*,struct of_device*,int ) ;
 int attach_one_temp (struct bbc_i2c_bus*,struct of_device*,int ) ;
 struct of_device* bbc_i2c_getdev (struct bbc_i2c_bus*,int ) ;
 int kenvctrld ;
 int * kenvctrld_task ;
 int * kthread_run (int ,int *,char*) ;
 int strcmp (int ,char*) ;

int bbc_envctrl_init(struct bbc_i2c_bus *bp)
{
 struct of_device *op;
 int temp_index = 0;
 int fan_index = 0;
 int devidx = 0;

 while ((op = bbc_i2c_getdev(bp, devidx++)) != ((void*)0)) {
  if (!strcmp(op->node->name, "temperature"))
   attach_one_temp(bp, op, temp_index++);
  if (!strcmp(op->node->name, "fan-control"))
   attach_one_fan(bp, op, fan_index++);
 }
 if (temp_index != 0 && fan_index != 0) {
  kenvctrld_task = kthread_run(kenvctrld, ((void*)0), "kenvctrld");
  if (IS_ERR(kenvctrld_task)) {
   int err = PTR_ERR(kenvctrld_task);

   kenvctrld_task = ((void*)0);
   return err;
  }
 }

 return 0;
}
