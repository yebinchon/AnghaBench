
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ have_data_in; int phase; } ;
struct scsi_cmnd {TYPE_3__ SCp; TYPE_2__* device; } ;
struct TYPE_9__ {unsigned int FifoCount; } ;
typedef TYPE_4__ nsp_hw_data ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;


 int FALSE ;
 scalar_t__ IO_IN ;
 int NSP_DEBUG_DATA_IO ;
 int PH_DATA ;
 int nsp_dbg (int ,char*) ;
 unsigned int nsp_fifo_count (struct scsi_cmnd*) ;
 int nsp_pio_read (struct scsi_cmnd*) ;
 int nsp_setup_fifo (TYPE_4__*,int ) ;

__attribute__((used)) static int nsp_dataphase_bypass(struct scsi_cmnd *SCpnt)
{
 nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;
 unsigned int count;



 if (SCpnt->SCp.have_data_in != IO_IN) {
  return 0;
 }

 count = nsp_fifo_count(SCpnt);
 if (data->FifoCount == count) {

  return 0;
 }





 nsp_dbg(NSP_DEBUG_DATA_IO, "use bypass quirk");
 SCpnt->SCp.phase = PH_DATA;
 nsp_pio_read(SCpnt);
 nsp_setup_fifo(data, FALSE);

 return 0;
}
