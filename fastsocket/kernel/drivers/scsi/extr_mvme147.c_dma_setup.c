
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int this_residual; int ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct TYPE_6__ {int dma_dir; } ;
struct TYPE_5__ {int dma_bcr; unsigned long dma_dadr; unsigned char dma_cntrl; } ;


 TYPE_3__* HDATA (int ) ;
 int cache_clear (unsigned long,int) ;
 int cache_push (unsigned long,int) ;
 TYPE_2__* m147_pcc ;
 int mvme147_host ;
 unsigned long virt_to_bus (int ) ;

__attribute__((used)) static int dma_setup(struct scsi_cmnd *cmd, int dir_in)
{
    unsigned char flags = 0x01;
    unsigned long addr = virt_to_bus(cmd->SCp.ptr);


    if (!dir_in)
 flags |= 0x04;


    HDATA(mvme147_host)->dma_dir = dir_in;

    if (dir_in)

 cache_clear (addr, cmd->SCp.this_residual);
    else

 cache_push (addr, cmd->SCp.this_residual);


    m147_pcc->dma_bcr = cmd->SCp.this_residual | (1<<24);
    m147_pcc->dma_dadr = addr;
    m147_pcc->dma_cntrl = flags;


    return 0;
}
