
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int dtt200u_fe_init (struct dvb_frontend*) ;

__attribute__((used)) static int dtt200u_fe_sleep(struct dvb_frontend* fe)
{
 return dtt200u_fe_init(fe);
}
