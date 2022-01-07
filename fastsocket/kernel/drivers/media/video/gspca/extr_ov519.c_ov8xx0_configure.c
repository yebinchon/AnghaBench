
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor; } ;


 int D_ERR ;
 int D_PROBE ;
 int OV7610_REG_COM_I ;
 int PDEBUG (int ,char*) ;
 int SEN_OV8610 ;
 int err (char*,int) ;
 int i2c_r (struct sd*,int ) ;

__attribute__((used)) static void ov8xx0_configure(struct sd *sd)
{
 int rc;

 PDEBUG(D_PROBE, "starting ov8xx0 configuration");


 rc = i2c_r(sd, OV7610_REG_COM_I);
 if (rc < 0) {
  PDEBUG(D_ERR, "Error detecting sensor type");
  return;
 }
 if ((rc & 3) == 1)
  sd->sensor = SEN_OV8610;
 else
  err("Unknown image sensor version: %d", rc & 3);
}
