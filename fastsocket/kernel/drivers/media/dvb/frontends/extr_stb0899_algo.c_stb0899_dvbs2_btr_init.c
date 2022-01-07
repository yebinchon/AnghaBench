
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_state {int dummy; } ;


 int BTR_CNTRL ;
 int BTR_ERR_ENA ;
 int INTRP_PHS_SENSE ;
 int STB0899_BASE_BTR_CNTRL ;
 int STB0899_BASE_BTR_FREQ_INIT ;
 int STB0899_BASE_BTR_PHS_INIT ;
 int STB0899_OFF0_BTR_CNTRL ;
 int STB0899_OFF0_BTR_FREQ_INIT ;
 int STB0899_OFF0_BTR_PHS_INIT ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,int,int) ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,int) ;

__attribute__((used)) static void stb0899_dvbs2_btr_init(struct stb0899_state *state)
{
 u32 reg;


 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, BTR_CNTRL);
 STB0899_SETFIELD_VAL(INTRP_PHS_SENSE, reg, 1);
 STB0899_SETFIELD_VAL(BTR_ERR_ENA, reg, 1);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_BTR_CNTRL, STB0899_OFF0_BTR_CNTRL, reg);


 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_BTR_FREQ_INIT, STB0899_OFF0_BTR_FREQ_INIT, 0x10000000);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_BTR_FREQ_INIT, STB0899_OFF0_BTR_FREQ_INIT, 0x00000000);


 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_BTR_PHS_INIT, STB0899_OFF0_BTR_PHS_INIT, 0x10000000);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_BTR_PHS_INIT, STB0899_OFF0_BTR_PHS_INIT, 0x00000000);
}
