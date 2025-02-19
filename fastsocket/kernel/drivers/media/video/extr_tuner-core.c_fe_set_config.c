
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tuner {int dummy; } ;
struct dvb_tuner_ops {int (* set_config ) (struct dvb_frontend*,void*) ;} ;
struct TYPE_2__ {struct dvb_tuner_ops tuner_ops; } ;
struct dvb_frontend {struct tuner* analog_demod_priv; TYPE_1__ ops; } ;


 int stub1 (struct dvb_frontend*,void*) ;
 int tuner_warn (char*) ;

__attribute__((used)) static int fe_set_config(struct dvb_frontend *fe, void *priv_cfg)
{
 struct dvb_tuner_ops *fe_tuner_ops = &fe->ops.tuner_ops;
 struct tuner *t = fe->analog_demod_priv;

 if (fe_tuner_ops->set_config)
  return fe_tuner_ops->set_config(fe, priv_cfg);

 tuner_warn("Tuner frontend module has no way to set config\n");

 return 0;
}
