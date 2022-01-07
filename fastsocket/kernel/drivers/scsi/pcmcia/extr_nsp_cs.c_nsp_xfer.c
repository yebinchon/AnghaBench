
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ phase; } ;
struct scsi_cmnd {TYPE_3__ SCp; TYPE_2__* device; } ;
struct TYPE_8__ {char* MsgBuffer; int MsgLen; } ;
typedef TYPE_4__ nsp_hw_data ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {unsigned int io_port; scalar_t__ hostdata; } ;


 char ACKENB ;
 char AUTODIRECTION ;
 int BUSMON_ACK ;
 int BUSMON_IO ;
 int BUSMON_REQ ;
 int MSGBUF_SIZE ;
 int NSP_DEBUG_DATA_IO ;
 scalar_t__ PH_MSG_OUT ;
 int SCSIBUSCTRL ;
 int SCSIDATAWITHACK ;
 int min (int ,int ) ;
 int nsp_dbg (int ,char*) ;
 int nsp_expect_signal (struct scsi_cmnd*,int,int ) ;
 char nsp_index_read (unsigned int,int ) ;
 int nsp_index_write (unsigned int,int ,char) ;
 int nsp_negate_signal (struct scsi_cmnd*,int ,char*) ;

__attribute__((used)) static int nsp_xfer(struct scsi_cmnd *SCpnt, int phase)
{
 unsigned int base = SCpnt->device->host->io_port;
 nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;
 char *buf = data->MsgBuffer;
 int len = min(MSGBUF_SIZE, data->MsgLen);
 int ptr;
 int ret;


 for (ptr = 0; len > 0; len--, ptr++) {

  ret = nsp_expect_signal(SCpnt, phase, BUSMON_REQ);
  if (ret <= 0) {
   nsp_dbg(NSP_DEBUG_DATA_IO, "xfer quit");
   return 0;
  }


  if (len == 1 && SCpnt->SCp.phase == PH_MSG_OUT) {
   nsp_index_write(base, SCSIBUSCTRL, AUTODIRECTION | ACKENB);
  }


  if (phase & BUSMON_IO) {
   nsp_dbg(NSP_DEBUG_DATA_IO, "read msg");
   buf[ptr] = nsp_index_read(base, SCSIDATAWITHACK);
  } else {
   nsp_dbg(NSP_DEBUG_DATA_IO, "write msg");
   nsp_index_write(base, SCSIDATAWITHACK, buf[ptr]);
  }
  nsp_negate_signal(SCpnt, BUSMON_ACK, "xfer<ack>");

 }
 return len;
}
