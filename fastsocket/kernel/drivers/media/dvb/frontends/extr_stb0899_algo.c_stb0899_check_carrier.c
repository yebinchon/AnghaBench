
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_internal {int status; int t_derot; } ;
struct stb0899_state {int verbose; struct stb0899_internal internal; } ;
typedef enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;


 int CARRIEROK ;
 int CARRIER_FOUND ;
 int CFD_ON ;
 int FE_DEBUG ;
 int NOCARRIER ;
 int STB0899_CFD ;
 int STB0899_DSTATUS ;
 scalar_t__ STB0899_GETFIELD (int ,int ) ;
 int STB0899_SETFIELD_VAL (int ,int ,int) ;
 int dprintk (int ,int ,int,char*,...) ;
 int msleep (int ) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 int stb0899_write_reg (struct stb0899_state*,int ,int ) ;

__attribute__((used)) static enum stb0899_status stb0899_check_carrier(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 u8 reg;

 msleep(internal->t_derot);

 reg = stb0899_read_reg(state, STB0899_CFD);
 STB0899_SETFIELD_VAL(CFD_ON, reg, 1);
 stb0899_write_reg(state, STB0899_CFD, reg);

 reg = stb0899_read_reg(state, STB0899_DSTATUS);
 dprintk(state->verbose, FE_DEBUG, 1, "--------------------> STB0899_DSTATUS=[0x%02x]", reg);
 if (STB0899_GETFIELD(CARRIER_FOUND, reg)) {
  internal->status = CARRIEROK;
  dprintk(state->verbose, FE_DEBUG, 1, "-------------> CARRIEROK !");
 } else {
  internal->status = NOCARRIER;
  dprintk(state->verbose, FE_DEBUG, 1, "-------------> NOCARRIER !");
 }

 return internal->status;
}
