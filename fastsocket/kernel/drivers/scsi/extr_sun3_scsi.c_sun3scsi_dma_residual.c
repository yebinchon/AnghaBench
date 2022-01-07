
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 unsigned long last_residual ;

__attribute__((used)) static inline unsigned long sun3scsi_dma_residual(struct Scsi_Host *instance)
{
 return last_residual;
}
