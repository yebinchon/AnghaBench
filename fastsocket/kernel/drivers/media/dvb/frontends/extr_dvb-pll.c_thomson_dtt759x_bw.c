
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ bandwidth; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;
struct dvb_frontend {int dummy; } ;


 scalar_t__ BANDWIDTH_7_MHZ ;

__attribute__((used)) static void thomson_dtt759x_bw(struct dvb_frontend *fe, u8 *buf,
          const struct dvb_frontend_parameters *params)
{
 if (BANDWIDTH_7_MHZ == params->u.ofdm.bandwidth)
  buf[3] |= 0x10;
}
