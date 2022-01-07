
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int PARITY_MASK ;
 int SCSI_Cntl_port ;
 int SCSI_Mode_Cntl_port ;
 int TMC_Cntl_port ;
 scalar_t__ chip ;
 int outb (int,int ) ;
 scalar_t__ tmc18c30 ;
 scalar_t__ tmc18c50 ;

__attribute__((used)) static void fd_mcs_make_bus_idle(struct Scsi_Host *shpnt)
{
 outb(0, SCSI_Cntl_port);
 outb(0, SCSI_Mode_Cntl_port);
 if (chip == tmc18c50 || chip == tmc18c30)
  outb(0x21 | PARITY_MASK, TMC_Cntl_port);
 else
  outb(0x01 | PARITY_MASK, TMC_Cntl_port);
}
