
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;



__attribute__((used)) static int drx397x_read_ber(struct dvb_frontend *fe, unsigned int *ber)
{
 *ber = 0;

 return 0;
}
