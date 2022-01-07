
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int dummy; } ;
struct fib {TYPE_2__* dev; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int options; } ;
struct TYPE_4__ {TYPE_1__ adapter_info; scalar_t__ needs_dac; } ;


 int AAC_OPT_SGMAP_HOST64 ;
 int FAILED ;
 int aac_scsi_32 (struct fib*,struct scsi_cmnd*) ;

__attribute__((used)) static int aac_scsi_32_64(struct fib * fib, struct scsi_cmnd * cmd)
{
 if ((sizeof(dma_addr_t) > 4) && fib->dev->needs_dac &&
     (fib->dev->adapter_info.options & AAC_OPT_SGMAP_HOST64))
  return FAILED;
 return aac_scsi_32(fib, cmd);
}
