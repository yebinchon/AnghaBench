
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct fixed_voltage_config* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int n_voltages; struct fixed_voltage_data* name; int * ops; int owner; int type; } ;
struct fixed_voltage_data {int enable_high; int is_enabled; TYPE_1__ desc; int microvolts; int dev; int gpio; } ;
struct fixed_voltage_config {int enable_high; int enabled_at_boot; int gpio; int init_data; int supply_name; int microvolts; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int dev_dbg (TYPE_2__*,char*,struct fixed_voltage_data*,int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_warn (TYPE_2__*,char*) ;
 int fixed_voltage_ops ;
 int gpio_direction_output (int ,int) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request (int ,int ) ;
 int kfree (struct fixed_voltage_data*) ;
 struct fixed_voltage_data* kstrdup (int ,int ) ;
 struct fixed_voltage_data* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fixed_voltage_data*) ;
 int regulator_register (TYPE_1__*,TYPE_2__*,int ,struct fixed_voltage_data*) ;

__attribute__((used)) static int regulator_fixed_voltage_probe(struct platform_device *pdev)
{
 struct fixed_voltage_config *config = pdev->dev.platform_data;
 struct fixed_voltage_data *drvdata;
 int ret;

 drvdata = kzalloc(sizeof(struct fixed_voltage_data), GFP_KERNEL);
 if (drvdata == ((void*)0)) {
  dev_err(&pdev->dev, "Failed to allocate device data\n");
  ret = -ENOMEM;
  goto err;
 }

 drvdata->desc.name = kstrdup(config->supply_name, GFP_KERNEL);
 if (drvdata->desc.name == ((void*)0)) {
  dev_err(&pdev->dev, "Failed to allocate supply name\n");
  ret = -ENOMEM;
  goto err;
 }
 drvdata->desc.type = REGULATOR_VOLTAGE;
 drvdata->desc.owner = THIS_MODULE;
 drvdata->desc.ops = &fixed_voltage_ops;
 drvdata->desc.n_voltages = 1;

 drvdata->microvolts = config->microvolts;
 drvdata->gpio = config->gpio;

 if (gpio_is_valid(config->gpio)) {
  drvdata->enable_high = config->enable_high;
  if (!config->gpio)
   dev_warn(&pdev->dev,
    "using GPIO 0 for regulator enable control\n");

  ret = gpio_request(config->gpio, config->supply_name);
  if (ret) {
   dev_err(&pdev->dev,
      "Could not obtain regulator enable GPIO %d: %d\n",
       config->gpio, ret);
   goto err_name;
  }




  drvdata->is_enabled = config->enabled_at_boot;
  ret = drvdata->is_enabled ?
    config->enable_high : !config->enable_high;

  ret = gpio_direction_output(config->gpio, ret);
  if (ret) {
   dev_err(&pdev->dev,
      "Could not configure regulator enable GPIO %d direction: %d\n",
       config->gpio, ret);
   goto err_gpio;
  }

 } else {



  drvdata->is_enabled = 1;
 }

 drvdata->dev = regulator_register(&drvdata->desc, &pdev->dev,
       config->init_data, drvdata);
 if (IS_ERR(drvdata->dev)) {
  ret = PTR_ERR(drvdata->dev);
  dev_err(&pdev->dev, "Failed to register regulator: %d\n", ret);
  goto err_gpio;
 }

 platform_set_drvdata(pdev, drvdata);

 dev_dbg(&pdev->dev, "%s supplying %duV\n", drvdata->desc.name,
  drvdata->microvolts);

 return 0;

err_gpio:
 if (gpio_is_valid(config->gpio))
  gpio_free(config->gpio);
err_name:
 kfree(drvdata->desc.name);
err:
 kfree(drvdata);
 return ret;
}
