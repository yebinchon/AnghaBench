
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int i2c_done; int i2c_queue; } ;


 int BT848_INT_RACK ;
 int EIO ;
 int ERESTARTSYS ;
 int msecs_to_jiffies (int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int
bttv_i2c_wait_done(struct bttv *btv)
{
 int rc = 0;


 if (wait_event_interruptible_timeout(btv->i2c_queue,
     btv->i2c_done, msecs_to_jiffies(85)) == -ERESTARTSYS)
  rc = -EIO;

 if (btv->i2c_done & BT848_INT_RACK)
  rc = 1;
 btv->i2c_done = 0;
 return rc;
}
