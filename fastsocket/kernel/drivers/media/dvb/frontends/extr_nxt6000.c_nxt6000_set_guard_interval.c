
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxt6000_state {int dummy; } ;
typedef int fe_guard_interval_t ;


 int EINVAL ;





 int OFDM_COR_MODEGUARD ;
 int nxt6000_readreg (struct nxt6000_state*,int ) ;
 int nxt6000_writereg (struct nxt6000_state*,int ,int) ;

__attribute__((used)) static int nxt6000_set_guard_interval(struct nxt6000_state* state, fe_guard_interval_t guard_interval)
{
 switch (guard_interval) {

 case 131:
  return nxt6000_writereg(state, OFDM_COR_MODEGUARD, 0x00 | (nxt6000_readreg(state, OFDM_COR_MODEGUARD) & ~0x03));

 case 132:
  return nxt6000_writereg(state, OFDM_COR_MODEGUARD, 0x01 | (nxt6000_readreg(state, OFDM_COR_MODEGUARD) & ~0x03));

 case 128:
 case 129:
  return nxt6000_writereg(state, OFDM_COR_MODEGUARD, 0x02 | (nxt6000_readreg(state, OFDM_COR_MODEGUARD) & ~0x03));

 case 130:
  return nxt6000_writereg(state, OFDM_COR_MODEGUARD, 0x03 | (nxt6000_readreg(state, OFDM_COR_MODEGUARD) & ~0x03));

 default:
  return -EINVAL;
 }
}
