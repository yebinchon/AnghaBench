
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt1_config {int va1j5jf8007t_config; int va1j5jf8007s_config; } ;
struct i2c_adapter {int dummy; } ;
struct pt1 {int * adaps; TYPE_1__* pdev; struct i2c_adapter i2c_adap; } ;
struct TYPE_4__ {int (* release ) (struct dvb_frontend*) ;} ;
struct dvb_frontend {TYPE_2__ ops; } ;
struct TYPE_3__ {int device; } ;


 int ENODEV ;
 int dvb_unregister_frontend (struct dvb_frontend*) ;
 struct pt1_config* pt1_configs ;
 int pt1_init_frontend (int ,struct dvb_frontend*) ;
 struct pt1_config* pt2_configs ;
 int stub1 (struct dvb_frontend*) ;
 struct dvb_frontend* va1j5jf8007s_attach (int *,struct i2c_adapter*) ;
 int va1j5jf8007s_prepare (struct dvb_frontend*) ;
 struct dvb_frontend* va1j5jf8007t_attach (int *,struct i2c_adapter*) ;
 int va1j5jf8007t_prepare (struct dvb_frontend*) ;

__attribute__((used)) static int pt1_init_frontends(struct pt1 *pt1)
{
 int i, j;
 struct i2c_adapter *i2c_adap;
 const struct pt1_config *configs, *config;
 struct dvb_frontend *fe[4];
 int ret;

 i = 0;
 j = 0;

 i2c_adap = &pt1->i2c_adap;
 configs = pt1->pdev->device == 0x211a ? pt1_configs : pt2_configs;
 do {
  config = &configs[i / 2];

  fe[i] = va1j5jf8007s_attach(&config->va1j5jf8007s_config,
         i2c_adap);
  if (!fe[i]) {
   ret = -ENODEV;
   goto err;
  }
  i++;

  fe[i] = va1j5jf8007t_attach(&config->va1j5jf8007t_config,
         i2c_adap);
  if (!fe[i]) {
   ret = -ENODEV;
   goto err;
  }
  i++;

  ret = va1j5jf8007s_prepare(fe[i - 2]);
  if (ret < 0)
   goto err;

  ret = va1j5jf8007t_prepare(fe[i - 1]);
  if (ret < 0)
   goto err;

 } while (i < 4);

 do {
  ret = pt1_init_frontend(pt1->adaps[j], fe[j]);
  if (ret < 0)
   goto err;
 } while (++j < 4);

 return 0;

err:
 while (i-- > j)
  fe[i]->ops.release(fe[i]);

 while (j--)
  dvb_unregister_frontend(fe[j]);

 return ret;
}
