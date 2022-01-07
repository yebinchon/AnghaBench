
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_6__ {unsigned long this_residual; int ptr; TYPE_3__* buffer; scalar_t__ buffers_residual; } ;
struct TYPE_7__ {TYPE_1__ SCp; } ;
typedef TYPE_2__ Scsi_Cmnd ;


 int MER_PRINTK (char*,int,unsigned long,...) ;
 int page_address (int ) ;
 int sg_page (TYPE_3__*) ;
 scalar_t__ sg_virt (TYPE_3__*) ;
 unsigned long virt_to_phys (scalar_t__) ;

__attribute__((used)) static void merge_contiguous_buffers(Scsi_Cmnd *cmd)
{
 unsigned long endaddr;





 for (endaddr = virt_to_phys(cmd->SCp.ptr + cmd->SCp.this_residual - 1) + 1;
      cmd->SCp.buffers_residual &&
      virt_to_phys(sg_virt(&cmd->SCp.buffer[1])) == endaddr;) {
  MER_PRINTK("VTOP(%p) == %08lx -> merging\n",
      page_address(sg_page(&cmd->SCp.buffer[1])), endaddr);



  ++cmd->SCp.buffer;
  --cmd->SCp.buffers_residual;
  cmd->SCp.this_residual += cmd->SCp.buffer->length;
  endaddr += cmd->SCp.buffer->length;
 }





}
