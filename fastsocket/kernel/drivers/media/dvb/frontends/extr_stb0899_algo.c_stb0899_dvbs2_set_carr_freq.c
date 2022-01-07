
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_state {struct stb0899_config* config; } ;
struct stb0899_config {int crl_nco_bits; } ;
typedef int s32 ;


 int CRL_NOM_FREQ ;
 int STB0899_BASE_CRL_NOM_FREQ ;
 int STB0899_OFF0_CRL_NOM_FREQ ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,int,int) ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,int) ;

__attribute__((used)) static void stb0899_dvbs2_set_carr_freq(struct stb0899_state *state, s32 carr_freq, u32 master_clk)
{
 struct stb0899_config *config = state->config;
 s32 crl_nom_freq;
 u32 reg;

 crl_nom_freq = (1 << config->crl_nco_bits) / master_clk;
 crl_nom_freq *= carr_freq;
 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, CRL_NOM_FREQ);
 STB0899_SETFIELD_VAL(CRL_NOM_FREQ, reg, crl_nom_freq);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_CRL_NOM_FREQ, STB0899_OFF0_CRL_NOM_FREQ, reg);
}
