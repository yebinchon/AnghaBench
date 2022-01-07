
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_bulk_data {int * consumer; int supply; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (struct device*,char*,int ) ;
 int * regulator_get (struct device*,int ) ;
 int regulator_put (int *) ;

int regulator_bulk_get(struct device *dev, int num_consumers,
         struct regulator_bulk_data *consumers)
{
 int i;
 int ret;

 for (i = 0; i < num_consumers; i++)
  consumers[i].consumer = ((void*)0);

 for (i = 0; i < num_consumers; i++) {
  consumers[i].consumer = regulator_get(dev,
            consumers[i].supply);
  if (IS_ERR(consumers[i].consumer)) {
   dev_err(dev, "Failed to get supply '%s'\n",
    consumers[i].supply);
   ret = PTR_ERR(consumers[i].consumer);
   consumers[i].consumer = ((void*)0);
   goto err;
  }
 }

 return 0;

err:
 for (i = 0; i < num_consumers && consumers[i].consumer; i++)
  regulator_put(consumers[i].consumer);

 return ret;
}
