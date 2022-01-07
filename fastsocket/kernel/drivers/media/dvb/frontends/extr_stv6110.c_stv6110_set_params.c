
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend_parameters {int dummy; } ;
struct dtv_frontend_properties {int frequency; int rolloff; int symbol_rate; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; } ;


 int carrier_width (int ,int ) ;
 int stv6110_set_bandwidth (struct dvb_frontend*,int ) ;
 int stv6110_set_frequency (struct dvb_frontend*,int ) ;

__attribute__((used)) static int stv6110_set_params(struct dvb_frontend *fe,
         struct dvb_frontend_parameters *params)
{
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 u32 bandwidth = carrier_width(c->symbol_rate, c->rolloff);

 stv6110_set_frequency(fe, c->frequency);
 stv6110_set_bandwidth(fe, bandwidth);

 return 0;
}
