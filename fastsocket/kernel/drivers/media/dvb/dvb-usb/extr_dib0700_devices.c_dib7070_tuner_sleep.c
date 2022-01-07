
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int deb_info (char*,int) ;
 int dib7000p_set_gpio (struct dvb_frontend*,int,int ,int) ;

__attribute__((used)) static int dib7070_tuner_sleep(struct dvb_frontend *fe, int onoff)
{
 deb_info("sleep: %d", onoff);
 return dib7000p_set_gpio(fe, 9, 0, onoff);
}
