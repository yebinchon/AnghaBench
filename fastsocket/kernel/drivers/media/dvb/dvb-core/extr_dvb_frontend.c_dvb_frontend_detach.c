
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* release ) (struct dvb_frontend*) ;} ;
struct TYPE_6__ {int (* release ) (struct dvb_frontend*) ;} ;
struct TYPE_5__ {int (* release ) (struct dvb_frontend*) ;TYPE_1__ analog_ops; TYPE_3__ tuner_ops; int (* release_sec ) (struct dvb_frontend*) ;} ;
struct dvb_frontend {TYPE_2__ ops; } ;


 int stub1 (struct dvb_frontend*) ;
 int stub2 (struct dvb_frontend*) ;
 int stub3 (struct dvb_frontend*) ;
 int stub4 (struct dvb_frontend*) ;

void dvb_frontend_detach(struct dvb_frontend* fe)
{
 if (fe->ops.release_sec)
  fe->ops.release_sec(fe);
 if (fe->ops.tuner_ops.release)
  fe->ops.tuner_ops.release(fe);
 if (fe->ops.analog_ops.release)
  fe->ops.analog_ops.release(fe);
 if (fe->ops.release)
  fe->ops.release(fe);
}
