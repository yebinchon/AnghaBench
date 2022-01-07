
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct analog_demod_ops {int (* standby ) (TYPE_2__*) ;} ;
struct TYPE_3__ {struct analog_demod_ops analog_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {TYPE_2__ fe; int standby; } ;
struct i2c_client {int dummy; } ;
typedef int pm_message_t ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (TYPE_2__*) ;
 struct tuner* to_tuner (int ) ;
 int tuner_dbg (char*) ;

__attribute__((used)) static int tuner_suspend(struct i2c_client *c, pm_message_t state)
{
 struct tuner *t = to_tuner(i2c_get_clientdata(c));
 struct analog_demod_ops *analog_ops = &t->fe.ops.analog_ops;

 tuner_dbg("suspend\n");

 if (!t->standby && analog_ops->standby)
  analog_ops->standby(&t->fe);

 return 0;
}
