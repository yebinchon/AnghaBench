
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tda10021_state {int i2c; TYPE_1__* config; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int printk (char*) ;
 int* tda10021_inittab ;

__attribute__((used)) static int unlock_tuner(struct tda10021_state* state)
{
 u8 buf[2] = { 0x0f, tda10021_inittab[0x0f] & 0x7f };
 struct i2c_msg msg_post={.addr=state->config->demod_address, .flags=0, .buf=buf, .len=2};

 if(i2c_transfer(state->i2c, &msg_post, 1) != 1)
 {
  printk("tda10021: unlock tuner fails\n");
  return -EREMOTEIO;
 }
 return 0;
}
