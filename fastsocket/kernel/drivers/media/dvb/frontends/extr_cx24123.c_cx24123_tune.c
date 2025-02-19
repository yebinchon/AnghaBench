
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef int fe_status_t ;


 unsigned int FE_TUNE_MODE_ONESHOT ;
 int HZ ;
 int cx24123_read_status (struct dvb_frontend*,int *) ;
 int cx24123_set_frontend (struct dvb_frontend*,struct dvb_frontend_parameters*) ;

__attribute__((used)) static int cx24123_tune(struct dvb_frontend *fe,
   struct dvb_frontend_parameters *params,
   unsigned int mode_flags,
   unsigned int *delay,
   fe_status_t *status)
{
 int retval = 0;

 if (params != ((void*)0))
  retval = cx24123_set_frontend(fe, params);

 if (!(mode_flags & FE_TUNE_MODE_ONESHOT))
  cx24123_read_status(fe, status);
 *delay = HZ/10;

 return retval;
}
