
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {struct dib0070_state* tuner_priv; } ;
struct dib0070_state {TYPE_2__* fe; } ;
struct TYPE_3__ {int bandwidth_hz; scalar_t__ delivery_system; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;


 scalar_t__ SYS_ISDBT ;
 int dib0070_read_reg (struct dib0070_state*,int) ;
 int dib0070_write_reg (struct dib0070_state*,int,int) ;

__attribute__((used)) static int dib0070_set_bandwidth(struct dvb_frontend *fe, struct dvb_frontend_parameters *ch)
{
    struct dib0070_state *state = fe->tuner_priv;
    u16 tmp = dib0070_read_reg(state, 0x02) & 0x3fff;

    if (state->fe->dtv_property_cache.bandwidth_hz/1000 > 7000)
 tmp |= (0 << 14);
    else if (state->fe->dtv_property_cache.bandwidth_hz/1000 > 6000)
 tmp |= (1 << 14);
    else if (state->fe->dtv_property_cache.bandwidth_hz/1000 > 5000)
 tmp |= (2 << 14);
    else
 tmp |= (3 << 14);

    dib0070_write_reg(state, 0x02, tmp);


    if (state->fe->dtv_property_cache.delivery_system == SYS_ISDBT) {
 u16 value = dib0070_read_reg(state, 0x17);

 dib0070_write_reg(state, 0x17, value & 0xfffc);
 tmp = dib0070_read_reg(state, 0x01) & 0x01ff;
 dib0070_write_reg(state, 0x01, tmp | (60 << 9));

 dib0070_write_reg(state, 0x17, value);
    }
 return 0;
}
