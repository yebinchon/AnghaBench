
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef int fe_status_t ;


 int HZ ;
 int cx24116_read_status (struct dvb_frontend*,int *) ;
 int cx24116_set_frontend (struct dvb_frontend*,struct dvb_frontend_parameters*) ;

__attribute__((used)) static int cx24116_tune(struct dvb_frontend *fe, struct dvb_frontend_parameters *params,
 unsigned int mode_flags, unsigned int *delay, fe_status_t *status)
{
 *delay = HZ / 5;
 if (params) {
  int ret = cx24116_set_frontend(fe, params);
  if (ret)
   return ret;
 }
 return cx24116_read_status(fe, status);
}
