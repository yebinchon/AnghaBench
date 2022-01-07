
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_5__ {scalar_t__ output_mode; } ;
struct dvb_frontend {TYPE_2__ ops; struct dib8000_state* demodulator_priv; } ;
struct TYPE_6__ {int addr; struct i2c_adapter* adap; } ;
struct dib8000_state {TYPE_3__ i2c; int i2c_master; int timf_default; struct dvb_frontend fe; TYPE_2__ cfg; int gpio_dir; int gpio_val; } ;
struct dib8000_config {TYPE_1__* pll; int gpio_dir; int gpio_val; } ;
struct TYPE_4__ {int timf; } ;


 int DIB8000 ;
 int GFP_KERNEL ;
 scalar_t__ OUTMODE_MPEG2_FIFO ;
 scalar_t__ OUTMODE_MPEG2_PAR_GATED_CLK ;
 scalar_t__ OUTMODE_MPEG2_SERIAL ;
 scalar_t__ dib8000_identify (TYPE_3__*) ;
 struct dib8000_config dib8000_ops ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_reset (struct dvb_frontend*) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dibx000_init_i2c_master (int *,int ,struct i2c_adapter*,int ) ;
 int dprintk (char*) ;
 int kfree (struct dib8000_state*) ;
 struct dib8000_state* kzalloc (int,int ) ;
 int memcpy (TYPE_2__*,struct dib8000_config*,int) ;

struct dvb_frontend *dib8000_attach(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib8000_config *cfg)
{
 struct dvb_frontend *fe;
 struct dib8000_state *state;

 dprintk("dib8000_attach");

 state = kzalloc(sizeof(struct dib8000_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);

 memcpy(&state->cfg, cfg, sizeof(struct dib8000_config));
 state->i2c.adap = i2c_adap;
 state->i2c.addr = i2c_addr;
 state->gpio_val = cfg->gpio_val;
 state->gpio_dir = cfg->gpio_dir;




 if ((state->cfg.output_mode != OUTMODE_MPEG2_SERIAL) && (state->cfg.output_mode != OUTMODE_MPEG2_PAR_GATED_CLK))
  state->cfg.output_mode = OUTMODE_MPEG2_FIFO;

 fe = &state->fe;
 fe->demodulator_priv = state;
 memcpy(&state->fe.ops, &dib8000_ops, sizeof(struct dvb_frontend_ops));

 state->timf_default = cfg->pll->timf;

 if (dib8000_identify(&state->i2c) == 0)
  goto error;

 dibx000_init_i2c_master(&state->i2c_master, DIB8000, state->i2c.adap, state->i2c.addr);

 dib8000_reset(fe);

 dib8000_write_word(state, 285, (dib8000_read_word(state, 285) & ~0x60) | (3 << 5));

 return fe;

 error:
 kfree(state);
 return ((void*)0);
}
