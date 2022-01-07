
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IO_REG_SIMR ;
 unsigned int ioasic_irq_base ;
 int ioasic_read (int ) ;
 int ioasic_write (int ,int) ;

__attribute__((used)) static inline void mask_ioasic_irq(unsigned int irq)
{
 u32 simr;

 simr = ioasic_read(IO_REG_SIMR);
 simr &= ~(1 << (irq - ioasic_irq_base));
 ioasic_write(IO_REG_SIMR, simr);
}
