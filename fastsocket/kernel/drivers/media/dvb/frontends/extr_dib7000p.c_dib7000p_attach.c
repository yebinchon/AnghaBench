
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int parent; } ;
struct i2c_adapter {TYPE_3__ dev; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_9__ {scalar_t__ output_mode; } ;
struct dvb_frontend {TYPE_4__ ops; struct dib7000p_state* demodulator_priv; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;
struct TYPE_10__ {TYPE_2__ gated_tuner_i2c_adap; } ;
struct dib7000p_state {int i2c_addr; struct i2c_adapter* i2c_adap; TYPE_5__ i2c_master; struct dvb_frontend demod; TYPE_4__ cfg; int gpio_dir; int gpio_val; } ;
struct dib7000p_config {int gpio_dir; int gpio_val; } ;


 int DIB7000P ;
 int GFP_KERNEL ;
 scalar_t__ OUTMODE_MPEG2_FIFO ;
 scalar_t__ OUTMODE_MPEG2_PAR_GATED_CLK ;
 scalar_t__ OUTMODE_MPEG2_SERIAL ;
 int dib7000p_demod_reset (struct dib7000p_state*) ;
 scalar_t__ dib7000p_identify (struct dib7000p_state*) ;
 struct dib7000p_config dib7000p_ops ;
 int dib7000p_write_word (struct dib7000p_state*,int,int) ;
 int dibx000_init_i2c_master (TYPE_5__*,int ,struct i2c_adapter*,int ) ;
 int kfree (struct dib7000p_state*) ;
 struct dib7000p_state* kzalloc (int,int ) ;
 int memcpy (TYPE_4__*,struct dib7000p_config*,int) ;

struct dvb_frontend * dib7000p_attach(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib7000p_config *cfg)
{
 struct dvb_frontend *demod;
 struct dib7000p_state *st;
 st = kzalloc(sizeof(struct dib7000p_state), GFP_KERNEL);
 if (st == ((void*)0))
  return ((void*)0);

 memcpy(&st->cfg, cfg, sizeof(struct dib7000p_config));
 st->i2c_adap = i2c_adap;
 st->i2c_addr = i2c_addr;
 st->gpio_val = cfg->gpio_val;
 st->gpio_dir = cfg->gpio_dir;




 if ((st->cfg.output_mode != OUTMODE_MPEG2_SERIAL) &&
     (st->cfg.output_mode != OUTMODE_MPEG2_PAR_GATED_CLK))
  st->cfg.output_mode = OUTMODE_MPEG2_FIFO;

 demod = &st->demod;
 demod->demodulator_priv = st;
 memcpy(&st->demod.ops, &dib7000p_ops, sizeof(struct dvb_frontend_ops));

    dib7000p_write_word(st, 1287, 0x0003);

 if (dib7000p_identify(st) != 0)
  goto error;




 st->i2c_master.gated_tuner_i2c_adap.dev.parent = i2c_adap->dev.parent;

 dibx000_init_i2c_master(&st->i2c_master, DIB7000P, st->i2c_adap, st->i2c_addr);

 dib7000p_demod_reset(st);

 return demod;

error:
 kfree(st);
 return ((void*)0);
}
