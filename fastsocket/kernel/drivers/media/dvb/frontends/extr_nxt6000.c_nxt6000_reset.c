
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nxt6000_state {int dummy; } ;


 int COREACT ;
 int OFDM_COR_CTL ;
 int nxt6000_readreg (struct nxt6000_state*,int ) ;
 int nxt6000_writereg (struct nxt6000_state*,int ,int) ;

__attribute__((used)) static void nxt6000_reset(struct nxt6000_state* state)
{
 u8 val;

 val = nxt6000_readreg(state, OFDM_COR_CTL);

 nxt6000_writereg(state, OFDM_COR_CTL, val & ~COREACT);
 nxt6000_writereg(state, OFDM_COR_CTL, val | COREACT);
}
