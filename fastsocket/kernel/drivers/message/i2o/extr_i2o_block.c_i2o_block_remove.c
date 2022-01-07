
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tid; } ;
struct i2o_device {TYPE_1__ lct_data; } ;
struct i2o_block_device {TYPE_2__* gd; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int disk_name; } ;


 int del_gendisk (TYPE_2__*) ;
 struct i2o_block_device* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int i2o_block_device_free (struct i2o_block_device*) ;
 int i2o_block_driver ;
 int i2o_device_claim_release (struct i2o_device*) ;
 int i2o_event_register (struct i2o_device*,int *,int ,int ) ;
 int osm_info (char*,int ,int ) ;
 struct i2o_device* to_i2o_device (struct device*) ;

__attribute__((used)) static int i2o_block_remove(struct device *dev)
{
 struct i2o_device *i2o_dev = to_i2o_device(dev);
 struct i2o_block_device *i2o_blk_dev = dev_get_drvdata(dev);

 osm_info("device removed (TID: %03x): %s\n", i2o_dev->lct_data.tid,
   i2o_blk_dev->gd->disk_name);

 i2o_event_register(i2o_dev, &i2o_block_driver, 0, 0);

 del_gendisk(i2o_blk_dev->gd);

 dev_set_drvdata(dev, ((void*)0));

 i2o_device_claim_release(i2o_dev);

 i2o_block_device_free(i2o_blk_dev);

 return 0;
}
