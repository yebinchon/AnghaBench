
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {int ops; struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int revision; int i2c_addr; struct i2c_adapter* i2c_adap; int i2c_master; int timf_default; struct dvb_frontend demod; int cfg; } ;
struct dib7000m_config {TYPE_1__* bw; } ;
struct TYPE_2__ {int timf; } ;


 int DIB7000 ;
 int DIB7000MC ;
 int GFP_KERNEL ;
 int dib7000m_demod_reset (struct dib7000m_state*) ;
 scalar_t__ dib7000m_identify (struct dib7000m_state*) ;
 struct dib7000m_config dib7000m_ops ;
 int dibx000_init_i2c_master (int *,int ,struct i2c_adapter*,int ) ;
 int kfree (struct dib7000m_state*) ;
 struct dib7000m_state* kzalloc (int,int ) ;
 int memcpy (int *,struct dib7000m_config*,int) ;

struct dvb_frontend * dib7000m_attach(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib7000m_config *cfg)
{
 struct dvb_frontend *demod;
 struct dib7000m_state *st;
 st = kzalloc(sizeof(struct dib7000m_state), GFP_KERNEL);
 if (st == ((void*)0))
  return ((void*)0);

 memcpy(&st->cfg, cfg, sizeof(struct dib7000m_config));
 st->i2c_adap = i2c_adap;
 st->i2c_addr = i2c_addr;

 demod = &st->demod;
 demod->demodulator_priv = st;
 memcpy(&st->demod.ops, &dib7000m_ops, sizeof(struct dvb_frontend_ops));

 st->timf_default = cfg->bw->timf;

 if (dib7000m_identify(st) != 0)
  goto error;

 if (st->revision == 0x4000)
  dibx000_init_i2c_master(&st->i2c_master, DIB7000, st->i2c_adap, st->i2c_addr);
 else
  dibx000_init_i2c_master(&st->i2c_master, DIB7000MC, st->i2c_adap, st->i2c_addr);

 dib7000m_demod_reset(st);

 return demod;

error:
 kfree(st);
 return ((void*)0);
}
