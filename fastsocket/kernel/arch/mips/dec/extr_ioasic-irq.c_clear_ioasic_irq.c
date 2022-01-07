
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IO_REG_SIR ;
 unsigned int ioasic_irq_base ;
 int ioasic_write (int ,int) ;

__attribute__((used)) static inline void clear_ioasic_irq(unsigned int irq)
{
 u32 sir;

 sir = ~(1 << (irq - ioasic_irq_base));
 ioasic_write(IO_REG_SIR, sir);
}
