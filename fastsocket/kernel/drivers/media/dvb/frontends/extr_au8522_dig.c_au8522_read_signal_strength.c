
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int au8522_read_snr (struct dvb_frontend*,int *) ;

__attribute__((used)) static int au8522_read_signal_strength(struct dvb_frontend *fe,
           u16 *signal_strength)
{
 return au8522_read_snr(fe, signal_strength);
}
