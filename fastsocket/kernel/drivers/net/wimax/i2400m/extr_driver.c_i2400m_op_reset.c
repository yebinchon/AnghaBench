
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int dummy; } ;
struct i2400m_reset_ctx {int result; int completion; } ;
struct i2400m {int (* bus_reset ) (struct i2400m*,int ) ;int init_mutex; struct i2400m_reset_ctx* reset_ctx; } ;
struct device {int dummy; } ;


 int COMPLETION_INITIALIZER_ONSTACK (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 int I2400M_RT_WARM ;
 int d_fnend (int,struct device*,char*,struct wimax_dev*,int) ;
 int d_fnstart (int,struct device*,char*,struct wimax_dev*) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct i2400m*,int ) ;
 int wait_for_completion_timeout (int *,int) ;
 struct i2400m* wimax_dev_to_i2400m (struct wimax_dev*) ;

__attribute__((used)) static
int i2400m_op_reset(struct wimax_dev *wimax_dev)
{
 int result;
 struct i2400m *i2400m = wimax_dev_to_i2400m(wimax_dev);
 struct device *dev = i2400m_dev(i2400m);
 struct i2400m_reset_ctx ctx = {
  .completion = COMPLETION_INITIALIZER_ONSTACK(ctx.completion),
  .result = 0,
 };

 d_fnstart(4, dev, "(wimax_dev %p)\n", wimax_dev);
 mutex_lock(&i2400m->init_mutex);
 i2400m->reset_ctx = &ctx;
 mutex_unlock(&i2400m->init_mutex);
 result = i2400m->bus_reset(i2400m, I2400M_RT_WARM);
 if (result < 0)
  goto out;
 result = wait_for_completion_timeout(&ctx.completion, 4*HZ);
 if (result == 0)
  result = -ETIMEDOUT;
 else if (result > 0)
  result = ctx.result;

 mutex_lock(&i2400m->init_mutex);
 i2400m->reset_ctx = ((void*)0);
 mutex_unlock(&i2400m->init_mutex);
out:
 d_fnend(4, dev, "(wimax_dev %p) = %d\n", wimax_dev, result);
 return result;
}
