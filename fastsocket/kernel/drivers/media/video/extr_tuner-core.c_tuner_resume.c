
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuner {int type; int standby; } ;
struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int set_mode_freq (struct i2c_client*,struct tuner*,int ,int ) ;
 struct tuner* to_tuner (int ) ;
 int tuner_dbg (char*) ;

__attribute__((used)) static int tuner_resume(struct i2c_client *c)
{
 struct tuner *t = to_tuner(i2c_get_clientdata(c));

 tuner_dbg("resume\n");

 if (!t->standby)
  set_mode_freq(c, t, t->type, 0);

 return 0;
}
