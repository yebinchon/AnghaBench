
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7134_dev {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct saa7134_dev* priv; } ;


 int philips_tda827x_tuner_sleep (struct dvb_frontend*) ;
 int saa7134_set_gpio (struct saa7134_dev*,int,int ) ;

__attribute__((used)) static int ads_duo_tuner_sleep(struct dvb_frontend *fe)
{
 struct saa7134_dev *dev = fe->dvb->priv;

 saa7134_set_gpio(dev, 22, 0);
 philips_tda827x_tuner_sleep(fe);
 return 0;
}
