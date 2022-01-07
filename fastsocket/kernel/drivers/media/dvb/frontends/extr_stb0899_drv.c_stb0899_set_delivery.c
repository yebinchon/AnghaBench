
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_state {int delsys; int verbose; } ;


 int FECM_RSVD0 ;
 int FECM_VITERBI_ON ;
 int FE_DEBUG ;
 int FE_ERROR ;
 int FRESLDPC ;
 int STB0899_FECM ;
 int STB0899_RSLLC ;
 int STB0899_RSULC ;
 int STB0899_SETFIELD_VAL (int ,int,int) ;
 int STB0899_STOPCLK1 ;
 int STB0899_STOPCLK2 ;
 int STB0899_TSLPL ;
 int STB0899_TSTRES ;
 int STB0899_TSULC ;
 int STOP_CHK8PSK ;
 int STOP_CKADCI108 ;
 int STOP_CKCORE216 ;
 int STOP_CKFEC108 ;
 int STOP_CKFEC216 ;
 int STOP_CKINTBUF216 ;
 int STOP_CKPKDLIN108 ;
 int STOP_CKPKDLIN216 ;
 int STOP_CKS2DMD108 ;



 int dprintk (int ,int ,int,char*) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;
 int stb0899_write_regs (struct stb0899_state*,int ,int*,int) ;

__attribute__((used)) static void stb0899_set_delivery(struct stb0899_state *state)
{
 u8 reg;
 u8 stop_clk[2];

 stop_clk[0] = stb0899_read_reg(state, STB0899_STOPCLK1);
 stop_clk[1] = stb0899_read_reg(state, STB0899_STOPCLK2);

 switch (state->delsys) {
 case 129:
  dprintk(state->verbose, FE_DEBUG, 1, "Delivery System -- DVB-S");

  reg = stb0899_read_reg(state, STB0899_FECM);
  STB0899_SETFIELD_VAL(FECM_RSVD0, reg, 0);
  STB0899_SETFIELD_VAL(FECM_VITERBI_ON, reg, 1);
  stb0899_write_reg(state, STB0899_FECM, reg);

  stb0899_write_reg(state, STB0899_RSULC, 0xb1);
  stb0899_write_reg(state, STB0899_TSULC, 0x40);
  stb0899_write_reg(state, STB0899_RSLLC, 0x42);
  stb0899_write_reg(state, STB0899_TSLPL, 0x12);

  reg = stb0899_read_reg(state, STB0899_TSTRES);
  STB0899_SETFIELD_VAL(FRESLDPC, reg, 1);
  stb0899_write_reg(state, STB0899_TSTRES, reg);

  STB0899_SETFIELD_VAL(STOP_CHK8PSK, stop_clk[0], 1);
  STB0899_SETFIELD_VAL(STOP_CKFEC108, stop_clk[0], 1);
  STB0899_SETFIELD_VAL(STOP_CKFEC216, stop_clk[0], 1);

  STB0899_SETFIELD_VAL(STOP_CKPKDLIN108, stop_clk[1], 1);
  STB0899_SETFIELD_VAL(STOP_CKPKDLIN216, stop_clk[1], 1);

  STB0899_SETFIELD_VAL(STOP_CKINTBUF216, stop_clk[0], 1);
  STB0899_SETFIELD_VAL(STOP_CKCORE216, stop_clk[0], 0);

  STB0899_SETFIELD_VAL(STOP_CKS2DMD108, stop_clk[1], 1);
  break;
 case 128:

  reg = stb0899_read_reg(state, STB0899_FECM);
  STB0899_SETFIELD_VAL(FECM_RSVD0, reg, 0);
  STB0899_SETFIELD_VAL(FECM_VITERBI_ON, reg, 0);
  stb0899_write_reg(state, STB0899_FECM, reg);

  stb0899_write_reg(state, STB0899_RSULC, 0xb1);
  stb0899_write_reg(state, STB0899_TSULC, 0x42);
  stb0899_write_reg(state, STB0899_RSLLC, 0x40);
  stb0899_write_reg(state, STB0899_TSLPL, 0x02);

  reg = stb0899_read_reg(state, STB0899_TSTRES);
  STB0899_SETFIELD_VAL(FRESLDPC, reg, 0);
  stb0899_write_reg(state, STB0899_TSTRES, reg);

  STB0899_SETFIELD_VAL(STOP_CHK8PSK, stop_clk[0], 1);
  STB0899_SETFIELD_VAL(STOP_CKFEC108, stop_clk[0], 0);
  STB0899_SETFIELD_VAL(STOP_CKFEC216, stop_clk[0], 0);

  STB0899_SETFIELD_VAL(STOP_CKPKDLIN108, stop_clk[1], 0);
  STB0899_SETFIELD_VAL(STOP_CKPKDLIN216, stop_clk[1], 0);

  STB0899_SETFIELD_VAL(STOP_CKINTBUF216, stop_clk[0], 0);
  STB0899_SETFIELD_VAL(STOP_CKCORE216, stop_clk[0], 0);

  STB0899_SETFIELD_VAL(STOP_CKS2DMD108, stop_clk[1], 0);
  break;
 case 130:

  reg = stb0899_read_reg(state, STB0899_FECM);
  STB0899_SETFIELD_VAL(FECM_RSVD0, reg, 1);
  STB0899_SETFIELD_VAL(FECM_VITERBI_ON, reg, 1);
  stb0899_write_reg(state, STB0899_FECM, reg);

  stb0899_write_reg(state, STB0899_RSULC, 0xa1);
  stb0899_write_reg(state, STB0899_TSULC, 0x61);
  stb0899_write_reg(state, STB0899_RSLLC, 0x42);

  reg = stb0899_read_reg(state, STB0899_TSTRES);
  STB0899_SETFIELD_VAL(FRESLDPC, reg, 1);
  stb0899_write_reg(state, STB0899_TSTRES, reg);

  STB0899_SETFIELD_VAL(STOP_CHK8PSK, stop_clk[0], 1);
  STB0899_SETFIELD_VAL(STOP_CKFEC108, stop_clk[0], 1);
  STB0899_SETFIELD_VAL(STOP_CKFEC216, stop_clk[0], 1);

  STB0899_SETFIELD_VAL(STOP_CKPKDLIN108, stop_clk[1], 1);
  STB0899_SETFIELD_VAL(STOP_CKPKDLIN216, stop_clk[1], 1);

  STB0899_SETFIELD_VAL(STOP_CKCORE216, stop_clk[0], 0);

  STB0899_SETFIELD_VAL(STOP_CKS2DMD108, stop_clk[1], 1);
  break;
 default:
  dprintk(state->verbose, FE_ERROR, 1, "Unsupported delivery system");
  break;
 }
 STB0899_SETFIELD_VAL(STOP_CKADCI108, stop_clk[0], 0);
 stb0899_write_regs(state, STB0899_STOPCLK1, stop_clk, 2);
}
