
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran {int dummy; } ;


 int ZR36057_I2CBR ;
 int btread (int ) ;

__attribute__((used)) static int
zoran_i2c_getscl (void *data)
{
 struct zoran *zr = (struct zoran *) data;

 return btread(ZR36057_I2CBR) & 1;
}
