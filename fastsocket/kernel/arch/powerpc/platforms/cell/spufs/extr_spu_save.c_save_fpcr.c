
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v; } ;


 unsigned int LSCSA_QW_OFFSET (int ) ;
 int fpcr ;
 TYPE_1__* regs_spill ;
 int spu_mffpscr () ;

__attribute__((used)) static inline void save_fpcr(void)
{

 unsigned int offset;





 offset = LSCSA_QW_OFFSET(fpcr);
 regs_spill[offset].v = spu_mffpscr();
}
