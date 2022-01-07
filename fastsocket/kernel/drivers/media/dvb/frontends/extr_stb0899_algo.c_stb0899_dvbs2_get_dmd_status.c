
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_state {int verbose; } ;
typedef enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;


 int CSM_LOCK ;
 int DMD_STAT2 ;
 int DMD_STATUS ;
 int DVBS2_DEMOD_LOCK ;
 int DVBS2_DEMOD_NOLOCK ;
 int FE_DEBUG ;
 int IF_AGC_LOCK ;
 int STB0899_GETFIELD (int ,int ) ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int UWP_LOCK ;
 int dprintk (int ,int ,int,char*,...) ;
 int msleep (int) ;

__attribute__((used)) static enum stb0899_status stb0899_dvbs2_get_dmd_status(struct stb0899_state *state, int timeout)
{
 int time = -10, lock = 0, uwp, csm;
 u32 reg;

 do {
  reg = STB0899_READ_S2REG(STB0899_S2DEMOD, DMD_STATUS);
  dprintk(state->verbose, FE_DEBUG, 1, "DMD_STATUS=[0x%02x]", reg);
  if (STB0899_GETFIELD(IF_AGC_LOCK, reg))
   dprintk(state->verbose, FE_DEBUG, 1, "------------->IF AGC LOCKED !");
  reg = STB0899_READ_S2REG(STB0899_S2DEMOD, DMD_STAT2);
  dprintk(state->verbose, FE_DEBUG, 1, "----------->DMD STAT2=[0x%02x]", reg);
  uwp = STB0899_GETFIELD(UWP_LOCK, reg);
  csm = STB0899_GETFIELD(CSM_LOCK, reg);
  if (uwp && csm)
   lock = 1;

  time += 10;
  msleep(10);

 } while ((!lock) && (time <= timeout));

 if (lock) {
  dprintk(state->verbose, FE_DEBUG, 1, "----------------> DVB-S2 LOCK !");
  return DVBS2_DEMOD_LOCK;
 } else {
  return DVBS2_DEMOD_NOLOCK;
 }
}
