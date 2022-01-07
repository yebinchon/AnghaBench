
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip {scalar_t__ subtype; int * sops; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ CC_OV7610 ;
 scalar_t__ CC_OV7620 ;
 scalar_t__ CC_OV76BE ;
 int ENOSYS ;
 int GENERIC_REG_COM_I ;
 int PDEBUG (int,char*) ;
 int PERROR (char*,...) ;
 int PINFO (char*) ;
 struct ovcamchip* i2c_get_clientdata (struct i2c_client*) ;
 int ov76be_ops ;
 int ov7x10_ops ;
 int ov7x20_ops ;
 int ov_read (struct i2c_client*,int,unsigned char*) ;

__attribute__((used)) static int ov7xx0_detect(struct i2c_client *c)
{
 struct ovcamchip *ov = i2c_get_clientdata(c);
 int rc;
 unsigned char val;

 PDEBUG(4, "");


 rc = ov_read(c, GENERIC_REG_COM_I, &val);
 if (rc < 0) {
  PERROR("Error detecting ov7xx0 type");
  return rc;
 }

 if ((val & 3) == 3) {
  PINFO("Camera chip is an OV7610");
  ov->subtype = CC_OV7610;
 } else if ((val & 3) == 1) {
  rc = ov_read(c, 0x15, &val);
  if (rc < 0) {
   PERROR("Error detecting ov7xx0 type");
   return rc;
  }

  if (val & 1) {
   PINFO("Camera chip is an OV7620AE");



   ov->subtype = CC_OV7620;
  } else {
   PINFO("Camera chip is an OV76BE");
   ov->subtype = CC_OV76BE;
  }
 } else if ((val & 3) == 0) {
  PINFO("Camera chip is an OV7620");
  ov->subtype = CC_OV7620;
 } else {
  PERROR("Unknown camera chip version: %d", val & 3);
  return -ENOSYS;
 }

 if (ov->subtype == CC_OV76BE)
  ov->sops = &ov76be_ops;
 else if (ov->subtype == CC_OV7620)
  ov->sops = &ov7x20_ops;
 else
  ov->sops = &ov7x10_ops;

 return 0;
}
