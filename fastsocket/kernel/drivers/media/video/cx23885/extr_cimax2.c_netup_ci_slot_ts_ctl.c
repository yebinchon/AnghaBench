
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct netup_ci_state {int ci_i2c_addr; int i2c_adap; } ;
struct dvb_ca_en50221 {struct netup_ci_state* data; } ;


 int EINVAL ;
 int netup_read_i2c (int ,int ,int ,int*,int) ;
 int netup_write_i2c (int ,int ,int ,int*,int) ;

int netup_ci_slot_ts_ctl(struct dvb_ca_en50221 *en50221, int slot)
{
 struct netup_ci_state *state = en50221->data;
 u8 buf;

 if (0 != slot)
  return -EINVAL;

 netup_read_i2c(state->i2c_adap, state->ci_i2c_addr,
   0, &buf, 1);
 buf |= 0x60;

 return netup_write_i2c(state->i2c_adap, state->ci_i2c_addr,
       0, &buf, 1);
}
