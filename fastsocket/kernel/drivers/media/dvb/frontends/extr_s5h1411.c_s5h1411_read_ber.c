
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {int dummy; } ;


 int s5h1411_read_ucblocks (struct dvb_frontend*,int *) ;

__attribute__((used)) static int s5h1411_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 return s5h1411_read_ucblocks(fe, ber);
}
