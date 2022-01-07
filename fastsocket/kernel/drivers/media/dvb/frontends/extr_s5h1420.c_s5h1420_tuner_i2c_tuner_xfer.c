
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct s5h1420_state {int CON_1_val; int i2c; TYPE_1__* config; } ;
struct i2c_msg {int* buf; int len; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int demod_address; } ;


 int CON_1 ;
 int EIO ;
 struct s5h1420_state* i2c_get_adapdata (struct i2c_adapter*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (struct i2c_msg*,struct i2c_msg*,int) ;
 int memset (struct i2c_msg*,int ,int) ;

__attribute__((used)) static int s5h1420_tuner_i2c_tuner_xfer(struct i2c_adapter *i2c_adap, struct i2c_msg msg[], int num)
{
 struct s5h1420_state *state = i2c_get_adapdata(i2c_adap);
 struct i2c_msg m[1 + num];
 u8 tx_open[2] = { CON_1, state->CON_1_val | 1 };

 memset(m, 0, sizeof(struct i2c_msg) * (1 + num));

 m[0].addr = state->config->demod_address;
 m[0].buf = tx_open;
 m[0].len = 2;

 memcpy(&m[1], msg, sizeof(struct i2c_msg) * num);

 return i2c_transfer(state->i2c, m, 1+num) == 1 + num ? num : -EIO;
}
