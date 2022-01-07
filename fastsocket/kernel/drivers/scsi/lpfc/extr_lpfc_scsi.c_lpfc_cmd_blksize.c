
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_2__ {int sector_size; } ;



__attribute__((used)) static inline unsigned
lpfc_cmd_blksize(struct scsi_cmnd *sc)
{
 return sc->device->sector_size;
}
