
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_message {int dummy; } ;
struct i2o_controller {int name; } ;


 struct i2o_message* ERR_PTR (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ IS_ERR (struct i2o_message*) ;
 struct i2o_message* i2o_msg_get (struct i2o_controller*) ;
 int jiffies ;
 int osm_debug (char*,int ) ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_after (int,unsigned long) ;

struct i2o_message *i2o_msg_get_wait(struct i2o_controller *c, int wait)
{
 unsigned long timeout = jiffies + wait * HZ;
 struct i2o_message *msg;

 while (IS_ERR(msg = i2o_msg_get(c))) {
  if (time_after(jiffies, timeout)) {
   osm_debug("%s: Timeout waiting for message frame.\n",
      c->name);
   return ERR_PTR(-ETIMEDOUT);
  }
  schedule_timeout_uninterruptible(1);
 }

 return msg;
}
