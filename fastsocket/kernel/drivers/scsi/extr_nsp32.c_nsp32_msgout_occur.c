
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
typedef int nsp32_sgtable ;
struct TYPE_10__ {int msgout_len; int * msgoutbuf; TYPE_3__* cur_lunt; } ;
typedef TYPE_4__ nsp32_hw_data ;
struct TYPE_9__ {int sglun_paddr; int cur_entry; } ;
struct TYPE_8__ {TYPE_1__* host; } ;
struct TYPE_7__ {unsigned int io_port; scalar_t__ hostdata; } ;


 int ASSERT ;
 int AUTOSCSI_RESTART ;
 int AUTO_COMMAND_PHASE ;
 int AUTO_MSGIN_00_OR_04 ;
 int AUTO_MSGIN_02 ;
 int CLEAR_CDB_FIFO_POINTER ;
 int COMMAND_CONTROL ;
 int NEGATE ;
 int NSP32_DEBUG_MSGOUTOCCUR ;
 int SCSI_BUS_MONITOR ;
 int SCSI_DATA_WITH_ACK ;
 int nsp32_build_nop (struct scsi_cmnd*) ;
 int nsp32_dbg (int ,char*,...) ;
 int nsp32_read1 (unsigned int,int ) ;
 int nsp32_wait_req (TYPE_4__*,int ) ;
 int nsp32_wait_sack (TYPE_4__*,int ) ;
 int nsp32_write1 (unsigned int,int ,int ) ;
 int nsp32_write2 (unsigned int,int ,int) ;

__attribute__((used)) static void nsp32_msgout_occur(struct scsi_cmnd *SCpnt)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 unsigned int base = SCpnt->device->host->io_port;

 long new_sgtp;
 int i;

 nsp32_dbg(NSP32_DEBUG_MSGOUTOCCUR,
    "enter: msgout_len: 0x%x", data->msgout_len);





 if (data->msgout_len == 0) {
  nsp32_build_nop(SCpnt);
 }






  new_sgtp = data->cur_lunt->sglun_paddr +
     (data->cur_lunt->cur_entry * sizeof(nsp32_sgtable));




 for (i = 0; i < data->msgout_len; i++) {
  nsp32_dbg(NSP32_DEBUG_MSGOUTOCCUR,
     "%d : 0x%x", i, data->msgoutbuf[i]);




  nsp32_wait_req(data, ASSERT);

  if (i == (data->msgout_len - 1)) {







   nsp32_write2(base, COMMAND_CONTROL,
      (CLEAR_CDB_FIFO_POINTER |
       AUTO_COMMAND_PHASE |
       AUTOSCSI_RESTART |
       AUTO_MSGIN_00_OR_04 |
       AUTO_MSGIN_02 ));
  }




  nsp32_write1(base, SCSI_DATA_WITH_ACK, data->msgoutbuf[i]);
  nsp32_wait_sack(data, NEGATE);

  nsp32_dbg(NSP32_DEBUG_MSGOUTOCCUR, "bus: 0x%x\n",
     nsp32_read1(base, SCSI_BUS_MONITOR));
 };

 data->msgout_len = 0;

 nsp32_dbg(NSP32_DEBUG_MSGOUTOCCUR, "exit");
}
