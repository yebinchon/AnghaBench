
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct userspace_consumer_data {int supplies; int num_supplies; scalar_t__ enabled; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int attr_group ;
 int kfree (struct userspace_consumer_data*) ;
 struct userspace_consumer_data* platform_get_drvdata (struct platform_device*) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_free (int ,int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int regulator_userspace_consumer_remove(struct platform_device *pdev)
{
 struct userspace_consumer_data *data = platform_get_drvdata(pdev);

 sysfs_remove_group(&pdev->dev.kobj, &attr_group);

 if (data->enabled)
  regulator_bulk_disable(data->num_supplies, data->supplies);

 regulator_bulk_free(data->num_supplies, data->supplies);
 kfree(data);

 return 0;
}
