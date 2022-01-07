
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran {int i2cbr; } ;


 int ZR36057_I2CBR ;
 int btwrite (int,int ) ;

__attribute__((used)) static void
zoran_i2c_setsda (void *data,
    int state)
{
 struct zoran *zr = (struct zoran *) data;

 if (state)
  zr->i2cbr |= 2;
 else
  zr->i2cbr &= ~2;
 btwrite(zr->i2cbr, ZR36057_I2CBR);
}
