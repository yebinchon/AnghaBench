
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARITY_MASK ;
 scalar_t__ SCSI_Cntl ;
 scalar_t__ SCSI_Mode_Cntl ;
 scalar_t__ TMC_Cntl ;
 scalar_t__ chip ;
 int outb (int,scalar_t__) ;
 scalar_t__ port_base ;
 scalar_t__ tmc18c30 ;
 scalar_t__ tmc18c50 ;

__attribute__((used)) static inline void fdomain_make_bus_idle( void )
{
   outb(0, port_base + SCSI_Cntl);
   outb(0, port_base + SCSI_Mode_Cntl);
   if (chip == tmc18c50 || chip == tmc18c30)
  outb(0x21 | PARITY_MASK, port_base + TMC_Cntl);
   else
  outb(0x01 | PARITY_MASK, port_base + TMC_Cntl);
}
