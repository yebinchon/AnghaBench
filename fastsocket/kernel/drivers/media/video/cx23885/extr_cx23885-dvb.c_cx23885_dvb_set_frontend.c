
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int modulation; } ;
struct TYPE_6__ {TYPE_2__ vsb; } ;
struct dvb_frontend_parameters {TYPE_3__ u; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx23885_tsport {struct cx23885_dev* dev; } ;
struct cx23885_dev {int board; } ;
struct TYPE_4__ {struct cx23885_tsport* priv; } ;





 int GPIO_0 ;
 int GPIO_5 ;



 int cx23885_gpio_clear (struct cx23885_dev*,int ) ;
 int cx23885_gpio_set (struct cx23885_dev*,int ) ;

__attribute__((used)) static int cx23885_dvb_set_frontend(struct dvb_frontend *fe,
        struct dvb_frontend_parameters *param)
{
 struct cx23885_tsport *port = fe->dvb->priv;
 struct cx23885_dev *dev = port->dev;

 switch (dev->board) {
 case 133:
  switch (param->u.vsb.modulation) {
  case 128:
   cx23885_gpio_clear(dev, GPIO_5);
   break;
  case 129:
  case 130:
  default:
   cx23885_gpio_set(dev, GPIO_5);
   break;
  }
  break;
 case 131:
 case 132:

  cx23885_gpio_set(dev, GPIO_0);
  break;
 }
 return 0;
}
