
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSC01_IC_RAMW ;
 int MSC01_IC_RAMW_ADDR_SHF ;
 int MSC01_IC_RAMW_DATA_SHF ;
 int MSCIC_WRITE (int ,int) ;

__attribute__((used)) static void msc_bind_eic_interrupt(int irq, int set)
{
 MSCIC_WRITE(MSC01_IC_RAMW,
      (irq<<MSC01_IC_RAMW_ADDR_SHF) | (set<<MSC01_IC_RAMW_DATA_SHF));
}
