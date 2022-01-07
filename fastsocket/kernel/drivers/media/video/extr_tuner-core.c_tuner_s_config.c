
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_priv_tun_config {scalar_t__ tuner; int priv; } ;
struct analog_demod_ops {int (* set_config ) (TYPE_2__*,int ) ;} ;
struct TYPE_3__ {struct analog_demod_ops analog_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {scalar_t__ type; TYPE_2__ fe; } ;


 int stub1 (TYPE_2__*,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;
 int tuner_dbg (char*) ;

__attribute__((used)) static int tuner_s_config(struct v4l2_subdev *sd,
     const struct v4l2_priv_tun_config *cfg)
{
 struct tuner *t = to_tuner(sd);
 struct analog_demod_ops *analog_ops = &t->fe.ops.analog_ops;

 if (t->type != cfg->tuner)
  return 0;

 if (analog_ops->set_config) {
  analog_ops->set_config(&t->fe, cfg->priv);
  return 0;
 }

 tuner_dbg("Tuner frontend module has no way to set config\n");
 return 0;
}
