
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {void* sensor; int invert_led; } ;


 int D_ERR ;
 int D_PROBE ;
 int OV7610_REG_COM_I ;
 int PDEBUG (int ,char*,...) ;
 void* SEN_OV7610 ;
 void* SEN_OV7620 ;
 void* SEN_OV7620AE ;
 void* SEN_OV7640 ;
 void* SEN_OV7648 ;
 void* SEN_OV7660 ;
 void* SEN_OV7670 ;
 void* SEN_OV76BE ;
 int err (char*,...) ;
 int i2c_r (struct sd*,int) ;

__attribute__((used)) static void ov7xx0_configure(struct sd *sd)
{
 int rc, high, low;

 PDEBUG(D_PROBE, "starting OV7xx0 configuration");


 rc = i2c_r(sd, OV7610_REG_COM_I);



 if (rc < 0) {
  PDEBUG(D_ERR, "Error detecting sensor type");
  return;
 }
 if ((rc & 3) == 3) {

  high = i2c_r(sd, 0x0a);
  low = i2c_r(sd, 0x0b);

  if (high == 0x76 && (low & 0xf0) == 0x70) {
   PDEBUG(D_PROBE, "Sensor is an OV76%02x", low);
   sd->sensor = SEN_OV7670;
  } else {
   PDEBUG(D_PROBE, "Sensor is an OV7610");
   sd->sensor = SEN_OV7610;
  }
 } else if ((rc & 3) == 1) {

  if (i2c_r(sd, 0x15) & 1) {
   PDEBUG(D_PROBE, "Sensor is an OV7620AE");
   sd->sensor = SEN_OV7620AE;
  } else {
   PDEBUG(D_PROBE, "Sensor is an OV76BE");
   sd->sensor = SEN_OV76BE;
  }
 } else if ((rc & 3) == 0) {

  high = i2c_r(sd, 0x0a);
  if (high < 0) {
   PDEBUG(D_ERR, "Error detecting camera chip PID");
   return;
  }
  low = i2c_r(sd, 0x0b);
  if (low < 0) {
   PDEBUG(D_ERR, "Error detecting camera chip VER");
   return;
  }
  if (high == 0x76) {
   switch (low) {
   case 0x30:
    err("Sensor is an OV7630/OV7635");
    err("7630 is not supported by this driver");
    return;
   case 0x40:
    PDEBUG(D_PROBE, "Sensor is an OV7645");
    sd->sensor = SEN_OV7640;
    break;
   case 0x45:
    PDEBUG(D_PROBE, "Sensor is an OV7645B");
    sd->sensor = SEN_OV7640;
    break;
   case 0x48:
    PDEBUG(D_PROBE, "Sensor is an OV7648");
    sd->sensor = SEN_OV7648;
    break;
   case 0x60:
    PDEBUG(D_PROBE, "Sensor is a OV7660");
    sd->sensor = SEN_OV7660;
    sd->invert_led = 0;
    break;
   default:
    PDEBUG(D_PROBE, "Unknown sensor: 0x76%x", low);
    return;
   }
  } else {
   PDEBUG(D_PROBE, "Sensor is an OV7620");
   sd->sensor = SEN_OV7620;
  }
 } else {
  err("Unknown image sensor version: %d", rc & 3);
 }
}
