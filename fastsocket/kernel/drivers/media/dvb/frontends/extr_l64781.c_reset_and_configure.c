
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l64781_state {int i2c; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;


 int ENODEV ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int reset_and_configure (struct l64781_state* state)
{
 u8 buf [] = { 0x06 };
 struct i2c_msg msg = { .addr = 0x00, .flags = 0, .buf = buf, .len = 1 };


 return (i2c_transfer(state->i2c, &msg, 1) == 1) ? 0 : -ENODEV;
}
