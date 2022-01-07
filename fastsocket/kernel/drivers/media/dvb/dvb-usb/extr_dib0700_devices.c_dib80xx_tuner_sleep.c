
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int dib8000_set_gpio (struct dvb_frontend*,int ,int ,int) ;

__attribute__((used)) static int dib80xx_tuner_sleep(struct dvb_frontend *fe, int onoff)
{
 return dib8000_set_gpio(fe, 0, 0, onoff);
}
