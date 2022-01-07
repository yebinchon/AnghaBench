
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* type; int irq; int dma; int io_base; } ;
struct TYPE_5__ {TYPE_1__ scsi; } ;
typedef TYPE_2__ FAS216_Info ;


 int sprintf (char*,char*,char*,int ,int,int) ;

int fas216_print_host(FAS216_Info *info, char *buffer)
{
 return sprintf(buffer,
   "\n"
   "Chip    : %s\n"
   " Address: 0x%p\n"
   " IRQ    : %d\n"
   " DMA    : %d\n",
   info->scsi.type, info->scsi.io_base,
   info->scsi.irq, info->scsi.dma);
}
