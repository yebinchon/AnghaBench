
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sif; void* sensor; } ;


 int D_ERR ;
 int D_PROBE ;
 int OV7610_REG_COM_I ;
 int PDEBUG (int ,char*) ;
 void* SEN_OV6620 ;
 void* SEN_OV6630 ;
 void* SEN_OV66308AF ;
 int err (char*,int) ;
 int i2c_r (struct sd*,int ) ;
 int warn (char*) ;

__attribute__((used)) static void ov6xx0_configure(struct sd *sd)
{
 int rc;
 PDEBUG(D_PROBE, "starting OV6xx0 configuration");


 rc = i2c_r(sd, OV7610_REG_COM_I);
 if (rc < 0) {
  PDEBUG(D_ERR, "Error detecting sensor type");
  return;
 }




 switch (rc) {
 case 0x00:
  sd->sensor = SEN_OV6630;
  warn("WARNING: Sensor is an OV66308. Your camera may have");
  warn("been misdetected in previous driver versions.");
  break;
 case 0x01:
  sd->sensor = SEN_OV6620;
  PDEBUG(D_PROBE, "Sensor is an OV6620");
  break;
 case 0x02:
  sd->sensor = SEN_OV6630;
  PDEBUG(D_PROBE, "Sensor is an OV66308AE");
  break;
 case 0x03:
  sd->sensor = SEN_OV66308AF;
  PDEBUG(D_PROBE, "Sensor is an OV66308AF");
  break;
 case 0x90:
  sd->sensor = SEN_OV6630;
  warn("WARNING: Sensor is an OV66307. Your camera may have");
  warn("been misdetected in previous driver versions.");
  break;
 default:
  err("FATAL: Unknown sensor version: 0x%02x", rc);
  return;
 }


 sd->sif = 1;
}
