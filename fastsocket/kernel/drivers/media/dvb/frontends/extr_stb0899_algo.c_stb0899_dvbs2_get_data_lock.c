
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_state {int verbose; } ;


 int CFGPDELSTATUS_LOCK ;
 int FE_DEBUG ;
 int STB0899_CFGPDELSTATUS1 ;
 int STB0899_GETFIELD (int ,int ) ;
 int dprintk (int ,int ,int,char*,int ) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;

__attribute__((used)) static int stb0899_dvbs2_get_data_lock(struct stb0899_state *state, int timeout)
{
 int time = 0, lock = 0;
 u8 reg;

 while ((!lock) && (time < timeout)) {
  reg = stb0899_read_reg(state, STB0899_CFGPDELSTATUS1);
  dprintk(state->verbose, FE_DEBUG, 1, "---------> CFGPDELSTATUS=[0x%02x]", reg);
  lock = STB0899_GETFIELD(CFGPDELSTATUS_LOCK, reg);
  time++;
 }

 return lock;
}
