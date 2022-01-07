
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* slot; } ;


 unsigned int LSCSA_QW_OFFSET (int ) ;
 int SPU_WrOutMbox ;
 int ppu_mb ;
 TYPE_1__* regs_spill ;
 int spu_writech (int ,unsigned int) ;

__attribute__((used)) static inline void write_ppu_mb(void)
{
 unsigned int offset;
 unsigned int data;





 offset = LSCSA_QW_OFFSET(ppu_mb);
 data = regs_spill[offset].slot[0];
 spu_writech(SPU_WrOutMbox, data);
}
