
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int reset; int address; } ;
struct TYPE_5__ {int (* done ) (int ) ;} ;
struct TYPE_4__ {scalar_t__ length; int cmd_count; int flags; scalar_t__ kernel_data; scalar_t__* cmd; } ;


 int DMA_MODE_READ ;
 int DMA_MODE_WRITE ;
 TYPE_3__* FDCS ;
 int FD_RAW_READ ;
 unsigned long claim_dma_lock () ;
 TYPE_2__* cont ;
 int fd_cacheflush (scalar_t__,scalar_t__) ;
 int fd_clear_dma_ff () ;
 int fd_disable_dma () ;
 scalar_t__ fd_dma_setup (scalar_t__,scalar_t__,int ,int ) ;
 int fd_enable_dma () ;
 int fd_set_dma_addr (scalar_t__) ;
 int fd_set_dma_count (scalar_t__) ;
 int fd_set_dma_mode (int ) ;
 int floppy_disable_hlt () ;
 int printk (char*,...) ;
 TYPE_1__* raw_cmd ;
 int release_dma_lock (unsigned long) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int virtual_dma_port ;

__attribute__((used)) static void setup_DMA(void)
{
 unsigned long f;
 f = claim_dma_lock();
 fd_disable_dma();
 fd_clear_dma_ff();
 fd_cacheflush(raw_cmd->kernel_data, raw_cmd->length);
 fd_set_dma_mode((raw_cmd->flags & FD_RAW_READ) ?
   DMA_MODE_READ : DMA_MODE_WRITE);
 fd_set_dma_addr(raw_cmd->kernel_data);
 fd_set_dma_count(raw_cmd->length);
 virtual_dma_port = FDCS->address;
 fd_enable_dma();
 release_dma_lock(f);

 floppy_disable_hlt();
}
