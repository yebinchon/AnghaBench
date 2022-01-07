
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hierarchy_information; int guard_interval; int transmission_mode; int constellation; void* code_rate_LP; void* code_rate_HP; int bandwidth; } ;
struct TYPE_3__ {TYPE_2__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_1__ u; int inversion; } ;
struct dvb_frontend {int dummy; } ;


 int BANDWIDTH_6_MHZ ;
 void* FEC_AUTO ;
 int GUARD_INTERVAL_AUTO ;
 int HIERARCHY_AUTO ;
 int INVERSION_AUTO ;
 int QAM_64 ;
 int TRANSMISSION_MODE_AUTO ;

__attribute__((used)) static int jdvbt90502_get_frontend(struct dvb_frontend *fe,
       struct dvb_frontend_parameters *p)
{
 p->inversion = INVERSION_AUTO;
 p->u.ofdm.bandwidth = BANDWIDTH_6_MHZ;
 p->u.ofdm.code_rate_HP = FEC_AUTO;
 p->u.ofdm.code_rate_LP = FEC_AUTO;
 p->u.ofdm.constellation = QAM_64;
 p->u.ofdm.transmission_mode = TRANSMISSION_MODE_AUTO;
 p->u.ofdm.guard_interval = GUARD_INTERVAL_AUTO;
 p->u.ofdm.hierarchy_information = HIERARCHY_AUTO;
 return 0;
}
