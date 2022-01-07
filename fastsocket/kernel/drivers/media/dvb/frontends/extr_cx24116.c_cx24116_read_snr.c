
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {int dummy; } ;


 int cx24116_read_snr_esno (struct dvb_frontend*,int *) ;
 int cx24116_read_snr_pct (struct dvb_frontend*,int *) ;
 int esno_snr ;

__attribute__((used)) static int cx24116_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 if (esno_snr == 1)
  return cx24116_read_snr_esno(fe, snr);
 else
  return cx24116_read_snr_pct(fe, snr);
}
