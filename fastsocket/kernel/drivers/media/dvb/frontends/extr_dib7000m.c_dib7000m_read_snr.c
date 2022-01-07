
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {int dummy; } ;



__attribute__((used)) static int dib7000m_read_snr(struct dvb_frontend* fe, u16 *snr)
{
 *snr = 0x0000;
 return 0;
}
