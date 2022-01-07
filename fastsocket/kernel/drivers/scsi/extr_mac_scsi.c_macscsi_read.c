
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ io_port; } ;


 char in_8 (scalar_t__) ;

__attribute__((used)) static __inline__ char macscsi_read(struct Scsi_Host *instance, int reg)
{
  return in_8(instance->io_port + (reg<<4));
}
