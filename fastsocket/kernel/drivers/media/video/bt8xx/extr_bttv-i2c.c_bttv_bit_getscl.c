
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int dummy; } ;


 int BT848_I2C ;
 int btread (int ) ;

__attribute__((used)) static int bttv_bit_getscl(void *data)
{
 struct bttv *btv = (struct bttv*)data;
 int state;

 state = btread(BT848_I2C) & 0x02 ? 1 : 0;
 return state;
}
