
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scc_channel {unsigned char* wreg; int ctrl; } ;


 int OutReg (int ,unsigned char,unsigned char) ;

__attribute__((used)) static inline void wr(struct scc_channel *scc, unsigned char reg,
 unsigned char val)
{
 OutReg(scc->ctrl, reg, (scc->wreg[reg] = val));
}
