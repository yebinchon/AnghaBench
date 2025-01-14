
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * parent; } ;
struct TYPE_11__ {int udelay; TYPE_1__ dev; struct TYPE_11__* adapter; scalar_t__ name; struct TYPE_11__* algo_data; struct ivtv* data; } ;
struct TYPE_10__ {scalar_t__ newi2c; int i2c_clock_period; } ;
struct ivtv {int instance; TYPE_4__ i2c_adap; TYPE_3__ options; TYPE_2__* pdev; TYPE_4__ i2c_client; int v4l2_dev; TYPE_4__ i2c_algo; } ;
struct i2c_client {int dummy; } ;
struct i2c_algo_bit_data {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_9__ {int dev; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int ENODEV ;
 int IVTV_DEBUG_I2C (char*) ;
 int IVTV_ERR (char*) ;
 int hw_addrs ;
 int hw_devicenames ;
 int i2c_add_adapter (TYPE_4__*) ;
 int i2c_bit_add_bus (TYPE_4__*) ;
 int i2c_set_adapdata (TYPE_4__*,int *) ;
 int ivtv_i2c_adap_hw_template ;
 int ivtv_i2c_adap_template ;
 int ivtv_i2c_algo_template ;
 int ivtv_i2c_client_template ;
 int ivtv_setscl (struct ivtv*,int) ;
 int ivtv_setsda (struct ivtv*,int) ;
 int memcpy (TYPE_4__*,int *,int) ;
 int sprintf (scalar_t__,char*,int) ;
 scalar_t__ strlen (scalar_t__) ;

int init_ivtv_i2c(struct ivtv *itv)
{
 int retval;

 IVTV_DEBUG_I2C("i2c init\n");




 if (ARRAY_SIZE(hw_devicenames) != ARRAY_SIZE(hw_addrs)) {
  IVTV_ERR("Mismatched I2C hardware arrays\n");
  return -ENODEV;
 }
 if (itv->options.newi2c > 0) {
  memcpy(&itv->i2c_adap, &ivtv_i2c_adap_hw_template,
         sizeof(struct i2c_adapter));
 } else {
  memcpy(&itv->i2c_adap, &ivtv_i2c_adap_template,
         sizeof(struct i2c_adapter));
  memcpy(&itv->i2c_algo, &ivtv_i2c_algo_template,
         sizeof(struct i2c_algo_bit_data));
 }
 itv->i2c_algo.udelay = itv->options.i2c_clock_period / 2;
 itv->i2c_algo.data = itv;
 itv->i2c_adap.algo_data = &itv->i2c_algo;

 sprintf(itv->i2c_adap.name + strlen(itv->i2c_adap.name), " #%d",
  itv->instance);
 i2c_set_adapdata(&itv->i2c_adap, &itv->v4l2_dev);

 memcpy(&itv->i2c_client, &ivtv_i2c_client_template,
        sizeof(struct i2c_client));
 itv->i2c_client.adapter = &itv->i2c_adap;
 itv->i2c_adap.dev.parent = &itv->pdev->dev;

 IVTV_DEBUG_I2C("setting scl and sda to 1\n");
 ivtv_setscl(itv, 1);
 ivtv_setsda(itv, 1);

 if (itv->options.newi2c > 0)
  retval = i2c_add_adapter(&itv->i2c_adap);
 else
  retval = i2c_bit_add_bus(&itv->i2c_adap);

 return retval;
}
