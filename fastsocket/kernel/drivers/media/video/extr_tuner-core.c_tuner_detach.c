
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* release ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int (* release ) (struct dvb_frontend*) ;} ;
struct TYPE_6__ {TYPE_2__ analog_ops; TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; } ;


 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*) ;

__attribute__((used)) static void tuner_detach(struct dvb_frontend *fe)
{
 if (fe->ops.tuner_ops.release)
  fe->ops.tuner_ops.release(fe);
 if (fe->ops.analog_ops.release)
  fe->ops.analog_ops.release(fe);
}
