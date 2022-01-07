
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {int d; } ;


 int af9005_send_command (int ,int,int*,int,int *,int ) ;
 int deb_info (char*,char*) ;

__attribute__((used)) static int af9005_fe_power(struct dvb_frontend *fe, int on)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 u8 temp = on;
 int ret;
 deb_info("power %s tuner\n", on ? "on" : "off");
 ret = af9005_send_command(state->d, 0x03, &temp, 1, ((void*)0), 0);
 return ret;
}
