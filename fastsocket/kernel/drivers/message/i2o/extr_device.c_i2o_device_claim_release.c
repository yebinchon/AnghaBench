
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tid; } ;
struct i2o_device {int lock; TYPE_1__ lct_data; } ;


 int I2O_CLAIM_PRIMARY ;
 int I2O_CMD_UTIL_RELEASE ;
 int i2o_device_issue_claim (struct i2o_device*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,...) ;
 int ssleep (int) ;

int i2o_device_claim_release(struct i2o_device *dev)
{
 int tries;
 int rc = 0;

 mutex_lock(&dev->lock);





 for (tries = 0; tries < 10; tries++) {
  rc = i2o_device_issue_claim(dev, I2O_CMD_UTIL_RELEASE,
         I2O_CLAIM_PRIMARY);
  if (!rc)
   break;

  ssleep(1);
 }

 if (!rc)
  pr_debug("i2o: claim release of device %d succeded\n",
    dev->lct_data.tid);
 else
  pr_debug("i2o: claim release of device %d failed %d\n",
    dev->lct_data.tid, rc);

 mutex_unlock(&dev->lock);

 return rc;
}
