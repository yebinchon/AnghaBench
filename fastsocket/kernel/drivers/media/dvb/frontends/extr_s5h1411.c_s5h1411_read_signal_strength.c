
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int s5h1411_read_snr (struct dvb_frontend*,int *) ;

__attribute__((used)) static int s5h1411_read_signal_strength(struct dvb_frontend *fe,
 u16 *signal_strength)
{
 return s5h1411_read_snr(fe, signal_strength);
}
