
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;


 int af9005_fe_power (struct dvb_frontend*,int ) ;

__attribute__((used)) static int af9005_fe_sleep(struct dvb_frontend *fe)
{
 return af9005_fe_power(fe, 0);
}
