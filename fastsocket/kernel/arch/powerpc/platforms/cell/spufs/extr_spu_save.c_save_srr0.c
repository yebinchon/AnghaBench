
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * slot; } ;


 unsigned int LSCSA_QW_OFFSET (int ) ;
 int SPU_RdSRR0 ;
 TYPE_1__* regs_spill ;
 int spu_readch (int ) ;
 int srr0 ;

__attribute__((used)) static inline void save_srr0(void)
{
 unsigned int offset;





 offset = LSCSA_QW_OFFSET(srr0);
 regs_spill[offset].slot[0] = spu_readch(SPU_RdSRR0);
}
