
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct max1586_platform_data {int v3_gain; int num_subdevs; TYPE_1__* subdevs; } ;
struct max1586_data {int min_uV; int max_uV; struct regulator_dev** rdev; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {struct max1586_platform_data* platform_data; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int id; int platform_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int MAX1586_V3 ;
 int MAX1586_V3_MAX_UV ;
 int MAX1586_V3_MIN_UV ;
 int MAX1586_V6 ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_3__*,char*,int) ;
 int dev_info (TYPE_3__*,char*) ;
 int i2c_set_clientdata (struct i2c_client*,struct regulator_dev**) ;
 int kfree (struct max1586_data*) ;
 struct max1586_data* kzalloc (int,int ) ;
 TYPE_2__* max1586_reg ;
 struct regulator_dev* regulator_register (TYPE_2__*,TYPE_3__*,int ,struct max1586_data*) ;
 int regulator_unregister (struct regulator_dev*) ;

__attribute__((used)) static int max1586_pmic_probe(struct i2c_client *client,
         const struct i2c_device_id *i2c_id)
{
 struct regulator_dev **rdev;
 struct max1586_platform_data *pdata = client->dev.platform_data;
 struct max1586_data *max1586;
 int i, id, ret = -ENOMEM;

 max1586 = kzalloc(sizeof(struct max1586_data) +
   sizeof(struct regulator_dev *) * (MAX1586_V6 + 1),
   GFP_KERNEL);
 if (!max1586)
  goto out;

 max1586->client = client;

 if (!pdata->v3_gain) {
  ret = -EINVAL;
  goto out_unmap;
 }
 max1586->min_uV = MAX1586_V3_MIN_UV / 1000 * pdata->v3_gain / 1000;
 max1586->max_uV = MAX1586_V3_MAX_UV / 1000 * pdata->v3_gain / 1000;

 rdev = max1586->rdev;
 for (i = 0; i < pdata->num_subdevs && i <= MAX1586_V6; i++) {
  id = pdata->subdevs[i].id;
  if (!pdata->subdevs[i].platform_data)
   continue;
  if (id < MAX1586_V3 || id > MAX1586_V6) {
   dev_err(&client->dev, "invalid regulator id %d\n", id);
   goto err;
  }
  rdev[i] = regulator_register(&max1586_reg[id], &client->dev,
          pdata->subdevs[i].platform_data,
          max1586);
  if (IS_ERR(rdev[i])) {
   ret = PTR_ERR(rdev[i]);
   dev_err(&client->dev, "failed to register %s\n",
    max1586_reg[id].name);
   goto err;
  }
 }

 i2c_set_clientdata(client, rdev);
 dev_info(&client->dev, "Maxim 1586 regulator driver loaded\n");
 return 0;

err:
 while (--i >= 0)
  regulator_unregister(rdev[i]);
out_unmap:
 kfree(max1586);
out:
 return ret;
}
