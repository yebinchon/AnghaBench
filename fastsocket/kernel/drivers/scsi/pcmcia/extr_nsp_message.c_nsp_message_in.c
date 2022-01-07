
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_6__ {unsigned char* MsgBuffer; int MsgLen; } ;
typedef TYPE_3__ nsp_hw_data ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {unsigned int io_port; scalar_t__ hostdata; } ;


 int BUSMON_REQ ;
 int BUSPHASE_MESSAGE_IN ;
 int MSGBUF_SIZE ;
 int NSP_DEBUG_MSGINOCCUR ;
 int SCSIBUSCTRL ;
 int SCSIDATAIN ;
 unsigned char SCSI_ACK ;
 int nsp_dbg (int ,char*) ;
 int nsp_expect_signal (struct scsi_cmnd*,int ,int ) ;
 unsigned char nsp_index_read (unsigned int,int ) ;
 int nsp_index_write (unsigned int,int ,unsigned char) ;
 int nsp_negate_signal (struct scsi_cmnd*,int ,char*) ;

__attribute__((used)) static void nsp_message_in(struct scsi_cmnd *SCpnt)
{
 unsigned int base = SCpnt->device->host->io_port;
 nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;
 unsigned char data_reg, control_reg;
 int ret, len;







 ret = 16;
 len = 0;

 nsp_dbg(NSP_DEBUG_MSGINOCCUR, "msgin loop");
 do {

  data_reg = nsp_index_read(base, SCSIDATAIN);


  control_reg = nsp_index_read(base, SCSIBUSCTRL);
  control_reg |= SCSI_ACK;
  nsp_index_write(base, SCSIBUSCTRL, control_reg);
  nsp_negate_signal(SCpnt, BUSMON_REQ, "msgin<REQ>");

  data->MsgBuffer[len] = data_reg; len++;


  control_reg = nsp_index_read(base, SCSIBUSCTRL);
  control_reg &= ~SCSI_ACK;
  nsp_index_write(base, SCSIBUSCTRL, control_reg);


  ret = nsp_expect_signal(SCpnt, BUSPHASE_MESSAGE_IN, BUSMON_REQ);
 } while (ret > 0 && MSGBUF_SIZE > len);

 data->MsgLen = len;

}
