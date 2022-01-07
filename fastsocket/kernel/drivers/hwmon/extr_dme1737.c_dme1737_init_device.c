
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int addr; } ;
struct dme1737_data {scalar_t__ type; int config; int config2; int has_fan; int has_pwm; int* pwm_config; int* pwm_acz; int vrm; int in_nominal; struct i2c_client* client; } ;
struct device {int dummy; } ;


 int DME1737_REG_CONFIG ;
 int DME1737_REG_CONFIG2 ;
 int DME1737_REG_PWM (int) ;
 int DME1737_REG_PWM_CONFIG (int) ;
 int DME1737_REG_TACH_PWM ;
 int EFAULT ;
 int IN_NOMINAL (scalar_t__) ;
 int PWM_EN_FROM_REG (int) ;
 int PWM_EN_TO_REG (int,int) ;
 int dev_err (struct device*,char*) ;
 struct dme1737_data* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,...) ;
 int dev_warn (struct device*,char*,...) ;
 scalar_t__ dme1737 ;
 scalar_t__ dme1737_i2c_get_features (int,struct dme1737_data*) ;
 void* dme1737_read (struct dme1737_data*,int ) ;
 int dme1737_write (struct dme1737_data*,int ,int) ;
 int force_start ;
 int vid_which_vrm () ;

__attribute__((used)) static int dme1737_init_device(struct device *dev)
{
 struct dme1737_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ix;
 u8 reg;


 data->in_nominal = IN_NOMINAL(data->type);

 data->config = dme1737_read(data, DME1737_REG_CONFIG);

 if (!(data->config & 0x01)) {
  if (!force_start) {
   dev_err(dev, "Device is not monitoring. "
    "Use the force_start load parameter to "
    "override.\n");
   return -EFAULT;
  }


  data->config |= 0x01;
  dme1737_write(data, DME1737_REG_CONFIG, data->config);
 }

 if (!(data->config & 0x04)) {
  dev_err(dev, "Device is not ready.\n");
  return -EFAULT;
 }


 if (client) {
  data->config2 = dme1737_read(data, DME1737_REG_CONFIG2);

  if (data->config2 & 0x04) {
   data->has_fan |= (1 << 2);
  }




  if (client->addr == 0x2e) {
   data->has_fan |= (1 << 3);
   data->has_pwm |= (1 << 2);
  }





  if (dme1737_i2c_get_features(0x2e, data) &&
      dme1737_i2c_get_features(0x4e, data)) {
   dev_warn(dev, "Failed to query Super-IO for optional "
     "features.\n");
  }
 } else {


  data->has_fan |= (1 << 2);
  data->has_pwm |= (1 << 2);
 }


 data->has_fan |= 0x03;
 data->has_pwm |= 0x03;

 dev_info(dev, "Optional features: pwm3=%s, pwm5=%s, pwm6=%s, "
   "fan3=%s, fan4=%s, fan5=%s, fan6=%s.\n",
   (data->has_pwm & (1 << 2)) ? "yes" : "no",
   (data->has_pwm & (1 << 4)) ? "yes" : "no",
   (data->has_pwm & (1 << 5)) ? "yes" : "no",
   (data->has_fan & (1 << 2)) ? "yes" : "no",
   (data->has_fan & (1 << 3)) ? "yes" : "no",
   (data->has_fan & (1 << 4)) ? "yes" : "no",
   (data->has_fan & (1 << 5)) ? "yes" : "no");

 reg = dme1737_read(data, DME1737_REG_TACH_PWM);

 if (client && reg != 0xa4) {
  dev_warn(dev, "Non-standard fan to pwm mapping: "
    "fan1->pwm%d, fan2->pwm%d, fan3->pwm%d, "
    "fan4->pwm%d. Please report to the driver "
    "maintainer.\n",
    (reg & 0x03) + 1, ((reg >> 2) & 0x03) + 1,
    ((reg >> 4) & 0x03) + 1, ((reg >> 6) & 0x03) + 1);
 } else if (!client && reg != 0x24) {
  dev_warn(dev, "Non-standard fan to pwm mapping: "
    "fan1->pwm%d, fan2->pwm%d, fan3->pwm%d. "
    "Please report to the driver maintainer.\n",
    (reg & 0x03) + 1, ((reg >> 2) & 0x03) + 1,
    ((reg >> 4) & 0x03) + 1);
 }




 if (!(data->config & 0x02)) {
  for (ix = 0; ix < 3; ix++) {
   data->pwm_config[ix] = dme1737_read(data,
      DME1737_REG_PWM_CONFIG(ix));
   if ((data->has_pwm & (1 << ix)) &&
       (PWM_EN_FROM_REG(data->pwm_config[ix]) == -1)) {
    dev_info(dev, "Switching pwm%d to "
      "manual mode.\n", ix + 1);
    data->pwm_config[ix] = PWM_EN_TO_REG(1,
       data->pwm_config[ix]);
    dme1737_write(data, DME1737_REG_PWM(ix), 0);
    dme1737_write(data,
           DME1737_REG_PWM_CONFIG(ix),
           data->pwm_config[ix]);
   }
  }
 }


 data->pwm_acz[0] = 1;
 data->pwm_acz[1] = 2;
 data->pwm_acz[2] = 4;


 if (data->type == dme1737) {
  data->vrm = vid_which_vrm();
 }

 return 0;
}
