
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nxt6000_state {TYPE_1__* config; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ clock_inversion; } ;


 int AGCLAST ;
 int ANALOG_CONTROL_0 ;
 int BER_CTRL ;
 int CAS_FREQ ;
 int CLKINVERSION ;
 int DIAG_CONFIG ;
 int EN_DMD_RACQ ;
 int FORCEMODE8K ;
 int INITIAL_AGC_BW ;
 int OFDM_AGC_CTL ;
 int OFDM_CAS_CTL ;
 int OFDM_COR_CTL ;
 int OFDM_COR_MODEGUARD ;
 int OFDM_ITB_FREQ_1 ;
 int OFDM_ITB_FREQ_2 ;
 int OFDM_PPM_CTL_1 ;
 int OFDM_SYR_CTL ;
 int OFDM_TRL_NOMINALRATE_1 ;
 int OFDM_TRL_NOMINALRATE_2 ;
 int PPM256 ;
 int RS_COR_SYNC_PARAM ;
 int SUB_DIAG_MODE_SEL ;
 int SYNC_PARAM ;
 int TB_SET ;
 int TS_FORMAT ;
 int VIT_BERTIME_0 ;
 int VIT_BERTIME_1 ;
 int VIT_BERTIME_2 ;
 int VIT_COR_CTL ;
 int VIT_COR_INTEN ;
 int VIT_COR_RESYNC ;
 int nxt6000_readreg (struct nxt6000_state*,int ) ;
 int nxt6000_writereg (struct nxt6000_state*,int ,int) ;

__attribute__((used)) static void nxt6000_setup(struct dvb_frontend* fe)
{
 struct nxt6000_state* state = fe->demodulator_priv;

 nxt6000_writereg(state, RS_COR_SYNC_PARAM, SYNC_PARAM);
 nxt6000_writereg(state, BER_CTRL, (0x01 << 1) | 0x01);
 nxt6000_writereg(state, VIT_BERTIME_2, 0x00);
 nxt6000_writereg(state, VIT_BERTIME_1, 0x02);
 nxt6000_writereg(state, VIT_BERTIME_0, 0x00);
 nxt6000_writereg(state, VIT_COR_INTEN, 0x98);
 nxt6000_writereg(state, VIT_COR_CTL, 0x82);
 nxt6000_writereg(state, VIT_COR_CTL, VIT_COR_RESYNC | 0x02 );
 nxt6000_writereg(state, OFDM_COR_CTL, (0x01 << 5) | (nxt6000_readreg(state, OFDM_COR_CTL) & 0x0F));
 nxt6000_writereg(state, OFDM_COR_MODEGUARD, FORCEMODE8K | 0x02);
 nxt6000_writereg(state, OFDM_AGC_CTL, AGCLAST | INITIAL_AGC_BW);
 nxt6000_writereg(state, OFDM_ITB_FREQ_1, 0x06);
 nxt6000_writereg(state, OFDM_ITB_FREQ_2, 0x31);
 nxt6000_writereg(state, OFDM_CAS_CTL, (0x01 << 7) | (0x02 << 3) | 0x04);
 nxt6000_writereg(state, CAS_FREQ, 0xBB);
 nxt6000_writereg(state, OFDM_SYR_CTL, 1 << 2);
 nxt6000_writereg(state, OFDM_PPM_CTL_1, PPM256);
 nxt6000_writereg(state, OFDM_TRL_NOMINALRATE_1, 0x49);
 nxt6000_writereg(state, OFDM_TRL_NOMINALRATE_2, 0x72);
 nxt6000_writereg(state, ANALOG_CONTROL_0, 1 << 5);
 nxt6000_writereg(state, EN_DMD_RACQ, (1 << 7) | (3 << 4) | 2);
 nxt6000_writereg(state, DIAG_CONFIG, TB_SET);

 if (state->config->clock_inversion)
  nxt6000_writereg(state, SUB_DIAG_MODE_SEL, CLKINVERSION);
 else
  nxt6000_writereg(state, SUB_DIAG_MODE_SEL, 0);

 nxt6000_writereg(state, TS_FORMAT, 0);
}
