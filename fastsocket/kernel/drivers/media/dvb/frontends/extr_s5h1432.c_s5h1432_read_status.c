
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef int fe_status_t ;



__attribute__((used)) static int s5h1432_read_status(struct dvb_frontend *fe, fe_status_t *status)
{
 return 0;
}
