
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; } ;


 int EIO ;
 int ENODEV ;
 int PDEBUG (int,char*) ;
 int PERROR (char*) ;
 scalar_t__ init_camchip (struct i2c_client*) ;
 scalar_t__ ov6xx0_detect (struct i2c_client*) ;
 scalar_t__ ov7xx0_detect (struct i2c_client*) ;

__attribute__((used)) static int ovcamchip_detect(struct i2c_client *c)
{






 PDEBUG(3, "Testing for 0V7xx0");
 if (init_camchip(c) < 0)
  return -ENODEV;

 if (c->addr & 1) {
  if (ov7xx0_detect(c) < 0) {
   PERROR("Failed to init OV7xx0");
   return -EIO;
  }
  return 0;
 }

 PDEBUG(3, "Testing for 0V6xx0");
 if (ov6xx0_detect(c) < 0) {
  PERROR("Failed to init OV6xx0");
  return -EIO;
 }
 return 0;
}
