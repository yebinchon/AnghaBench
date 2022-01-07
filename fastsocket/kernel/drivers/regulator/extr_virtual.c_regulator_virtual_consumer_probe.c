
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct virtual_consumer_data {int regulator; int mode; int lock; } ;
struct TYPE_5__ {char* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int * attributes ;
 int dev_err (TYPE_1__*,char*,...) ;
 int device_create_file (TYPE_1__*,int ) ;
 int device_remove_file (TYPE_1__*,int ) ;
 int kfree (struct virtual_consumer_data*) ;
 struct virtual_consumer_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct virtual_consumer_data*) ;
 int regulator_get (TYPE_1__*,char*) ;
 int regulator_get_mode (int ) ;
 int regulator_put (int ) ;

__attribute__((used)) static int regulator_virtual_consumer_probe(struct platform_device *pdev)
{
 char *reg_id = pdev->dev.platform_data;
 struct virtual_consumer_data *drvdata;
 int ret, i;

 drvdata = kzalloc(sizeof(struct virtual_consumer_data), GFP_KERNEL);
 if (drvdata == ((void*)0)) {
  return -ENOMEM;
 }

 mutex_init(&drvdata->lock);

 drvdata->regulator = regulator_get(&pdev->dev, reg_id);
 if (IS_ERR(drvdata->regulator)) {
  ret = PTR_ERR(drvdata->regulator);
  dev_err(&pdev->dev, "Failed to obtain supply '%s': %d\n",
   reg_id, ret);
  goto err;
 }

 for (i = 0; i < ARRAY_SIZE(attributes); i++) {
  ret = device_create_file(&pdev->dev, attributes[i]);
  if (ret != 0) {
   dev_err(&pdev->dev, "Failed to create attr %d: %d\n",
    i, ret);
   goto err_regulator;
  }
 }

 drvdata->mode = regulator_get_mode(drvdata->regulator);

 platform_set_drvdata(pdev, drvdata);

 return 0;

err_regulator:
 regulator_put(drvdata->regulator);
err:
 for (i = 0; i < ARRAY_SIZE(attributes); i++)
  device_remove_file(&pdev->dev, attributes[i]);
 kfree(drvdata);
 return ret;
}
