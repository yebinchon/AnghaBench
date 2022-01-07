
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {int dummy; } ;





 int cx23885_dvb_set_frontend (struct dvb_frontend*,struct dvb_frontend_parameters*) ;

__attribute__((used)) static int cx23885_dvb_fe_ioctl_override(struct dvb_frontend *fe,
      unsigned int cmd, void *parg,
      unsigned int stage)
{
 int err = 0;

 switch (stage) {
 case 129:

  switch (cmd) {
  case 128:
   err = cx23885_dvb_set_frontend(fe,
    (struct dvb_frontend_parameters *) parg);
   break;
  }
  break;

 case 130:

  break;
 }
 return err;
}
