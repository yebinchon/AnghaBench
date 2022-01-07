
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int fdtv_get_frontend(struct dvb_frontend *fe,
        struct dvb_frontend_parameters *params)
{
 return -EOPNOTSUPP;
}
