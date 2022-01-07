
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int i2c_state; } ;


 int BT848_I2C ;
 int btread (int ) ;
 int btwrite (int,int ) ;

__attribute__((used)) static void bttv_bit_setsda(void *data, int state)
{
 struct bttv *btv = (struct bttv*)data;

 if (state)
  btv->i2c_state |= 0x01;
 else
  btv->i2c_state &= ~0x01;
 btwrite(btv->i2c_state, BT848_I2C);
 btread(BT848_I2C);
}
