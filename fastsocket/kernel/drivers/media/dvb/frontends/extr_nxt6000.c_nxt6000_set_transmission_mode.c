
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxt6000_state {int dummy; } ;
typedef int fe_transmit_mode_t ;


 int EINVAL ;
 int EN_DMD_RACQ ;
 int OFDM_COR_MODEGUARD ;



 int nxt6000_readreg (struct nxt6000_state*,int ) ;
 int nxt6000_writereg (struct nxt6000_state*,int ,int) ;

__attribute__((used)) static int nxt6000_set_transmission_mode(struct nxt6000_state* state, fe_transmit_mode_t transmission_mode)
{
 int result;

 switch (transmission_mode) {

 case 130:
  if ((result = nxt6000_writereg(state, EN_DMD_RACQ, 0x00 | (nxt6000_readreg(state, EN_DMD_RACQ) & ~0x03))) < 0)
   return result;

  return nxt6000_writereg(state, OFDM_COR_MODEGUARD, (0x00 << 2) | (nxt6000_readreg(state, OFDM_COR_MODEGUARD) & ~0x04));

 case 129:
 case 128:
  if ((result = nxt6000_writereg(state, EN_DMD_RACQ, 0x02 | (nxt6000_readreg(state, EN_DMD_RACQ) & ~0x03))) < 0)
   return result;

  return nxt6000_writereg(state, OFDM_COR_MODEGUARD, (0x01 << 2) | (nxt6000_readreg(state, OFDM_COR_MODEGUARD) & ~0x04));

 default:
  return -EINVAL;

 }
}
