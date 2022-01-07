
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_consumer_data {int regulator; scalar_t__ enabled; } ;
struct platform_device {int dev; } ;


 int ARRAY_SIZE (int *) ;
 int * attributes ;
 int device_remove_file (int *,int ) ;
 int kfree (struct virtual_consumer_data*) ;
 struct virtual_consumer_data* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int regulator_put (int ) ;

__attribute__((used)) static int regulator_virtual_consumer_remove(struct platform_device *pdev)
{
 struct virtual_consumer_data *drvdata = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < ARRAY_SIZE(attributes); i++)
  device_remove_file(&pdev->dev, attributes[i]);
 if (drvdata->enabled)
  regulator_disable(drvdata->regulator);
 regulator_put(drvdata->regulator);

 kfree(drvdata);

 return 0;
}
