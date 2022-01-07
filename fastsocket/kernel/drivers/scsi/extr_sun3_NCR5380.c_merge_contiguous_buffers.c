
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long this_residual; int ptr; TYPE_2__* buffer; scalar_t__ buffers_residual; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct TYPE_4__ {scalar_t__ length; } ;


 int MER_PRINTK (char*,int,unsigned long,...) ;
 scalar_t__ SGADDR (TYPE_2__*) ;
 unsigned long virt_to_phys (scalar_t__) ;

__attribute__((used)) static void merge_contiguous_buffers(struct scsi_cmnd *cmd)
{
    unsigned long endaddr;





    for (endaddr = virt_to_phys(cmd->SCp.ptr + cmd->SCp.this_residual - 1) + 1;
  cmd->SCp.buffers_residual &&
  virt_to_phys(SGADDR(&(cmd->SCp.buffer[1]))) == endaddr; ) {

 MER_PRINTK("VTOP(%p) == %08lx -> merging\n",
     SGADDR(&(cmd->SCp.buffer[1])), endaddr);



 ++cmd->SCp.buffer;
 --cmd->SCp.buffers_residual;
 cmd->SCp.this_residual += cmd->SCp.buffer->length;
 endaddr += cmd->SCp.buffer->length;
    }





}
