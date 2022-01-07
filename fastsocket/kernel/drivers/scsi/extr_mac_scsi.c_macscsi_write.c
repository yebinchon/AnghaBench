
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ io_port; } ;


 int out_8 (scalar_t__,int) ;

__attribute__((used)) static __inline__ void macscsi_write(struct Scsi_Host *instance, int reg, int value)
{
  out_8(instance->io_port + (reg<<4), value);
}
