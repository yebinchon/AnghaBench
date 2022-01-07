
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip {scalar_t__ subtype; int * sops; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ CC_OV6620 ;
 void* CC_OV6630 ;
 int GENERIC_REG_COM_I ;
 int PDEBUG (int,char*) ;
 int PERROR (char*) ;
 int PINFO (char*) ;
 struct ovcamchip* i2c_get_clientdata (struct i2c_client*) ;
 int ov6x20_ops ;
 int ov6x30_ops ;
 int ov_read (struct i2c_client*,int ,unsigned char*) ;

__attribute__((used)) static int ov6xx0_detect(struct i2c_client *c)
{
 struct ovcamchip *ov = i2c_get_clientdata(c);
 int rc;
 unsigned char val;

 PDEBUG(4, "");


 rc = ov_read(c, GENERIC_REG_COM_I, &val);
 if (rc < 0) {
  PERROR("Error detecting ov6xx0 type");
  return -1;
 }

 if ((val & 3) == 0) {
  ov->subtype = CC_OV6630;
  PINFO("Camera chip is an OV6630");
 } else if ((val & 3) == 1) {
  ov->subtype = CC_OV6620;
  PINFO("Camera chip is an OV6620");
 } else if ((val & 3) == 2) {
  ov->subtype = CC_OV6630;
  PINFO("Camera chip is an OV6630AE");
 } else if ((val & 3) == 3) {
  ov->subtype = CC_OV6630;
  PINFO("Camera chip is an OV6630AF");
 }

 if (ov->subtype == CC_OV6620)
  ov->sops = &ov6x20_ops;
 else
  ov->sops = &ov6x30_ops;

 return 0;
}
