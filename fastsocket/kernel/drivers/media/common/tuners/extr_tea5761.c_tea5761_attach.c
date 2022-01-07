
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {char* name; struct i2c_adapter* adap; int addr; } ;
struct tea5761_priv {TYPE_1__ i2c_props; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_4__ {int tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct tea5761_priv* tuner_priv; } ;


 int GFP_KERNEL ;
 struct tea5761_priv* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ tea5761_autodetection (struct i2c_adapter*,int ) ;
 int tea5761_tuner_ops ;
 int tuner_info (char*,char*) ;

struct dvb_frontend *tea5761_attach(struct dvb_frontend *fe,
        struct i2c_adapter* i2c_adap,
        u8 i2c_addr)
{
 struct tea5761_priv *priv = ((void*)0);

 if (tea5761_autodetection(i2c_adap, i2c_addr) != 0)
  return ((void*)0);

 priv = kzalloc(sizeof(struct tea5761_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return ((void*)0);
 fe->tuner_priv = priv;

 priv->i2c_props.addr = i2c_addr;
 priv->i2c_props.adap = i2c_adap;
 priv->i2c_props.name = "tea5761";

 memcpy(&fe->ops.tuner_ops, &tea5761_tuner_ops,
        sizeof(struct dvb_tuner_ops));

 tuner_info("type set to %s\n", "Philips TEA5761HN FM Radio");

 return fe;
}
