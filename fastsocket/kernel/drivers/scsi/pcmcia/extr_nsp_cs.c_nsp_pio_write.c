
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int ptr; scalar_t__ this_residual; scalar_t__ buffers_residual; TYPE_3__* buffer; } ;
struct scsi_cmnd {TYPE_4__ SCp; TYPE_2__* device; } ;
struct TYPE_10__ {int FifoCount; int TransferMode; int CmdId; } ;
typedef TYPE_5__ nsp_hw_data ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {unsigned int io_port; unsigned long base; scalar_t__ hostdata; } ;


 int BIT (int) ;
 int BUFFER_ADDR ;
 unsigned char BUSMON_PHASE_MASK ;
 unsigned char BUSPHASE_DATA_OUT ;
 int KERN_DEBUG ;



 int NSP_DEBUG_DATA_IO ;
 int SCSIBUSMON ;
 int WFIFO_CRIT ;
 int min (scalar_t__,int ) ;
 int nsp_dbg (int ,char*,...) ;
 int nsp_fifo32_write (unsigned int,int,int) ;
 int nsp_fifo8_write (unsigned int,int,int) ;
 int nsp_fifo_count (struct scsi_cmnd*) ;
 int nsp_inc_resid (struct scsi_cmnd*,int) ;
 unsigned char nsp_index_read (unsigned int,int ) ;
 int nsp_mmio_fifo32_write (unsigned long,int,int) ;
 int nsp_msg (int ,char*,int) ;
 int scsi_get_resid (struct scsi_cmnd*) ;

__attribute__((used)) static void nsp_pio_write(struct scsi_cmnd *SCpnt)
{
 unsigned int base = SCpnt->device->host->io_port;
 unsigned long mmio_base = SCpnt->device->host->base;
 nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;
 int time_out;
 int ocount, res;
 unsigned char stat;

 ocount = data->FifoCount;

 nsp_dbg(NSP_DEBUG_DATA_IO, "in fifocount=%d ptr=0x%p this_residual=%d buffers=0x%p nbuf=%d resid=0x%x",
  data->FifoCount, SCpnt->SCp.ptr, SCpnt->SCp.this_residual,
  SCpnt->SCp.buffer, SCpnt->SCp.buffers_residual,
  scsi_get_resid(SCpnt));

 time_out = 1000;

 while ((time_out-- != 0) &&
        (SCpnt->SCp.this_residual > 0 || SCpnt->SCp.buffers_residual > 0)) {
  stat = nsp_index_read(base, SCSIBUSMON);
  stat &= BUSMON_PHASE_MASK;

  if (stat != BUSPHASE_DATA_OUT) {
   res = ocount - nsp_fifo_count(SCpnt);

   nsp_dbg(NSP_DEBUG_DATA_IO, "phase changed stat=0x%x, res=%d\n", stat, res);

   nsp_inc_resid(SCpnt, res);
   SCpnt->SCp.ptr -= res;
   SCpnt->SCp.this_residual += res;
   ocount -= res;

   break;
  }

  res = ocount - nsp_fifo_count(SCpnt);
  if (res > 0) {
   nsp_dbg(NSP_DEBUG_DATA_IO, "wait for all data out. ocount=0x%x res=%d", ocount, res);
   continue;
  }

  res = min(SCpnt->SCp.this_residual, WFIFO_CRIT);


  switch (data->TransferMode) {
  case 130:
   res &= ~(BIT(1)|BIT(0));
   nsp_fifo32_write(base, SCpnt->SCp.ptr, res >> 2);
   break;
  case 129:
   nsp_fifo8_write (base, SCpnt->SCp.ptr, res );
   break;

  case 128:
   res &= ~(BIT(1)|BIT(0));
   nsp_mmio_fifo32_write(mmio_base, SCpnt->SCp.ptr, res >> 2);
   break;

  default:
   nsp_dbg(NSP_DEBUG_DATA_IO, "unknown write mode");
   break;
  }

  nsp_inc_resid(SCpnt, -res);
  SCpnt->SCp.ptr += res;
  SCpnt->SCp.this_residual -= res;
  ocount += res;


  if (SCpnt->SCp.this_residual == 0 &&
      SCpnt->SCp.buffers_residual != 0 ) {

   SCpnt->SCp.buffers_residual--;
   SCpnt->SCp.buffer++;
   SCpnt->SCp.ptr = BUFFER_ADDR;
   SCpnt->SCp.this_residual = SCpnt->SCp.buffer->length;
   time_out = 1000;
  }
 }

 data->FifoCount = ocount;

 if (time_out < 0) {
  nsp_msg(KERN_DEBUG, "pio write timeout resid=0x%x",
                                          scsi_get_resid(SCpnt));
 }
 nsp_dbg(NSP_DEBUG_DATA_IO, "write ocount=0x%x", ocount);
 nsp_dbg(NSP_DEBUG_DATA_IO, "w cmd=%d resid=0x%x\n", data->CmdId,
                                                 scsi_get_resid(SCpnt));
}
