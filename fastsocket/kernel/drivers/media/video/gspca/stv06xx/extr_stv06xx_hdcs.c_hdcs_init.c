
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {scalar_t__ bridge; int gspca_dev; struct hdcs* sensor_priv; } ;
struct TYPE_2__ {int height; int width; } ;
struct hdcs {int psmp; TYPE_1__ array; } ;


 int ARRAY_SIZE (int**) ;
 int BIT (int) ;
 scalar_t__ BRIDGE_STV602 ;
 int HDCS_ADC_START_SIG_DUR ;
 int HDCS_DEFAULT_EXPOSURE ;
 int HDCS_DEFAULT_GAIN ;
 int HDCS_REG_CONFIG (struct sd*) ;
 int HDCS_TCTRL ;
 scalar_t__ IS_1020 (struct sd*) ;
 int STV_STV0600_EMULATION ;
 int hdcs_reset (struct sd*) ;
 int hdcs_set_exposure (int *,int ) ;
 int hdcs_set_gains (struct sd*,int ) ;
 int hdcs_set_size (struct sd*,int ,int ) ;
 int stv06xx_write_bridge (struct sd*,int,int) ;
 int stv06xx_write_sensor (struct sd*,int,int) ;
 int** stv_bridge_init ;
 int** stv_sensor_init ;

__attribute__((used)) static int hdcs_init(struct sd *sd)
{
 struct hdcs *hdcs = sd->sensor_priv;
 int i, err = 0;


 if (sd->bridge == BRIDGE_STV602)
  stv06xx_write_bridge(sd, STV_STV0600_EMULATION, 1);


 for (i = 0; i < ARRAY_SIZE(stv_bridge_init) && !err; i++) {
  err = stv06xx_write_bridge(sd, stv_bridge_init[i][0],
        stv_bridge_init[i][1]);
 }
 if (err < 0)
  return err;


 hdcs_reset(sd);


 for (i = 0; i < ARRAY_SIZE(stv_sensor_init) && !err; i++) {
  err = stv06xx_write_sensor(sd, stv_sensor_init[i][0],
          stv_sensor_init[i][1]);
 }
 if (err < 0)
  return err;


 err = stv06xx_write_sensor(sd, HDCS_REG_CONFIG(sd), BIT(3));
 if (err < 0)
  return err;



 if (IS_1020(sd))
  err = stv06xx_write_sensor(sd, HDCS_TCTRL,
    (HDCS_ADC_START_SIG_DUR << 6) | hdcs->psmp);
 else
  err = stv06xx_write_sensor(sd, HDCS_TCTRL,
    (HDCS_ADC_START_SIG_DUR << 5) | hdcs->psmp);
 if (err < 0)
  return err;

 err = hdcs_set_gains(sd, HDCS_DEFAULT_GAIN);
 if (err < 0)
  return err;

 err = hdcs_set_size(sd, hdcs->array.width, hdcs->array.height);
 if (err < 0)
  return err;

 err = hdcs_set_exposure(&sd->gspca_dev, HDCS_DEFAULT_EXPOSURE);
 return err;
}
