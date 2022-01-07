
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct lp3971_platform_data {int num_regulators; TYPE_1__* regulators; } ;
struct lp3971 {int num_regulators; scalar_t__* rdev; int dev; } ;
struct TYPE_2__ {int id; int initdata; } ;


 int GFP_KERNEL ;
 int IS_ERR (scalar_t__) ;
 int dev_err (int ,char*,int) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kzalloc (int,int ) ;
 scalar_t__ regulator_register (int *,int ,int ,struct lp3971*) ;
 int regulator_unregister (scalar_t__) ;
 int * regulators ;

__attribute__((used)) static int setup_regulators(struct lp3971 *lp3971,
 struct lp3971_platform_data *pdata)
{
 int i, err;
 int num_regulators = pdata->num_regulators;
 lp3971->num_regulators = num_regulators;
 lp3971->rdev = kzalloc(sizeof(struct regulator_dev *) * num_regulators,
  GFP_KERNEL);


 for (i = 0; i < num_regulators; i++) {
  int id = pdata->regulators[i].id;
  lp3971->rdev[i] = regulator_register(&regulators[id],
   lp3971->dev, pdata->regulators[i].initdata, lp3971);

  err = IS_ERR(lp3971->rdev[i]);
  if (err) {
   dev_err(lp3971->dev, "regulator init failed: %d\n",
    err);
   goto error;
  }
 }

 return 0;
error:
 for (i = 0; i < num_regulators; i++)
  if (lp3971->rdev[i])
   regulator_unregister(lp3971->rdev[i]);
 kfree(lp3971->rdev);
 lp3971->rdev = ((void*)0);
 return err;
}
