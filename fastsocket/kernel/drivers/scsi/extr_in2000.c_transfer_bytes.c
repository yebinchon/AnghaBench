
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct IN2000_hostdata {int* sync_xfer; scalar_t__ level2; unsigned short io_base; int fifo; void* state; } ;
struct TYPE_11__ {int length; } ;
struct TYPE_9__ {int this_residual; scalar_t__ phase; int have_data_in; scalar_t__ ptr; TYPE_6__* buffer; scalar_t__ buffers_residual; } ;
struct TYPE_10__ {TYPE_3__ SCp; TYPE_2__* device; } ;
struct TYPE_8__ {size_t id; TYPE_1__* host; } ;
struct TYPE_7__ {scalar_t__ hostdata; } ;
typedef TYPE_4__ Scsi_Cmnd ;


 int CTRL_BUS ;
 int CTRL_EDI ;
 int CTRL_IDI ;
 int FAST_WRITE2_IO () ;
 int FI_FIFO_READING ;
 int FI_FIFO_WRITING ;
 int IN2000_FIFO_SIZE ;
 unsigned short IO_FIFO ;
 int IO_FIFO_READ ;
 int IO_FIFO_WRITE ;
 scalar_t__ L2_BASIC ;
 scalar_t__ L2_DATA ;
 void* S_RUNNING_LEVEL2 ;
 int WD_CMD_SEL_ATN_XFER ;
 int WD_CMD_TRANS_INFO ;
 int WD_COMMAND_PHASE ;
 int WD_CONTROL ;
 int WD_SYNCHRONOUS_TRANSFER ;
 scalar_t__ sg_virt (TYPE_6__*) ;
 int write1_io (int ,int ) ;
 int write2_io (int ,unsigned short) ;
 int write_3393 (struct IN2000_hostdata*,int ,int) ;
 int write_3393_cmd (struct IN2000_hostdata*,int ) ;
 int write_3393_count (struct IN2000_hostdata*,int) ;

__attribute__((used)) static void transfer_bytes(Scsi_Cmnd * cmd, int data_in_dir)
{
 struct IN2000_hostdata *hostdata;
 unsigned short *sp;
 unsigned short f;
 int i;

 hostdata = (struct IN2000_hostdata *) cmd->device->host->hostdata;
 if (!cmd->SCp.this_residual && cmd->SCp.buffers_residual) {
  ++cmd->SCp.buffer;
  --cmd->SCp.buffers_residual;
  cmd->SCp.this_residual = cmd->SCp.buffer->length;
  cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
 }



 write_3393(hostdata, WD_SYNCHRONOUS_TRANSFER, hostdata->sync_xfer[cmd->device->id]);
 write_3393_count(hostdata, cmd->SCp.this_residual);
 write_3393(hostdata, WD_CONTROL, CTRL_IDI | CTRL_EDI | CTRL_BUS);
 write1_io(0, IO_FIFO_WRITE);





 if (data_in_dir) {
  write1_io(0, IO_FIFO_READ);
  if ((hostdata->level2 >= L2_DATA) || (hostdata->level2 == L2_BASIC && cmd->SCp.phase == 0)) {
   write_3393(hostdata, WD_COMMAND_PHASE, 0x45);
   write_3393_cmd(hostdata, WD_CMD_SEL_ATN_XFER);
   hostdata->state = S_RUNNING_LEVEL2;
  } else
   write_3393_cmd(hostdata, WD_CMD_TRANS_INFO);
  hostdata->fifo = FI_FIFO_READING;
  cmd->SCp.have_data_in = 0;
  return;
 }






 if ((hostdata->level2 >= L2_DATA) || (hostdata->level2 == L2_BASIC && cmd->SCp.phase == 0)) {
  write_3393(hostdata, WD_COMMAND_PHASE, 0x45);
  write_3393_cmd(hostdata, WD_CMD_SEL_ATN_XFER);
  hostdata->state = S_RUNNING_LEVEL2;
 } else
  write_3393_cmd(hostdata, WD_CMD_TRANS_INFO);
 hostdata->fifo = FI_FIFO_WRITING;
 sp = (unsigned short *) cmd->SCp.ptr;

 if ((i = cmd->SCp.this_residual) > IN2000_FIFO_SIZE)
  i = IN2000_FIFO_SIZE;
 cmd->SCp.have_data_in = i;
 i >>= 1;
 f = hostdata->io_base + IO_FIFO;





 while (i--)
  write2_io(*sp++, IO_FIFO);



}
