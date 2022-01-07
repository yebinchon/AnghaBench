
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_tuner_ops {int (* sleep ) (struct dvb_frontend*) ;} ;
struct TYPE_2__ {struct dvb_tuner_ops tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; } ;


 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static void fe_standby(struct dvb_frontend *fe)
{
 struct dvb_tuner_ops *fe_tuner_ops = &fe->ops.tuner_ops;

 if (fe_tuner_ops->sleep)
  fe_tuner_ops->sleep(fe);
}
