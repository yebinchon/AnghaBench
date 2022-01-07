
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef int fe_status_t ;


 int FE_IS_TUNED ;
 int ds3000_read_status (struct dvb_frontend*,int*) ;

__attribute__((used)) static int ds3000_is_tuned(struct dvb_frontend *fe)
{
 fe_status_t tunerstat;

 ds3000_read_status(fe, &tunerstat);

 return ((tunerstat & FE_IS_TUNED) == FE_IS_TUNED);
}
