
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_14__ {int sync_flag; unsigned char period; } ;
typedef TYPE_3__ nsp32_target ;
struct TYPE_15__ {unsigned char period_num; } ;
typedef TYPE_4__ nsp32_sync_table ;
struct TYPE_16__ {unsigned char* msginbuf; int syncnum; TYPE_4__* synct; TYPE_3__* cur_target; } ;
typedef TYPE_5__ nsp32_hw_data ;
struct TYPE_13__ {TYPE_1__* host; } ;
struct TYPE_12__ {scalar_t__ hostdata; } ;


 unsigned char ASYNC_OFFSET ;
 int NSP32_DEBUG_MSGINOCCUR ;
 int SDTR_DONE ;
 int SDTR_INITIATOR ;
 unsigned char SYNC_OFFSET ;
 int nsp32_build_reject (struct scsi_cmnd*) ;
 int nsp32_build_sdtr (struct scsi_cmnd*,unsigned char,unsigned char) ;
 int nsp32_dbg (int ,char*) ;
 int nsp32_search_period_entry (TYPE_5__*,TYPE_3__*,unsigned char) ;
 int nsp32_set_async (TYPE_5__*,TYPE_3__*) ;
 int nsp32_set_sync_entry (TYPE_5__*,TYPE_3__*,int,unsigned char) ;

__attribute__((used)) static void nsp32_analyze_sdtr(struct scsi_cmnd *SCpnt)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 nsp32_target *target = data->cur_target;
 nsp32_sync_table *synct;
 unsigned char get_period = data->msginbuf[3];
 unsigned char get_offset = data->msginbuf[4];
 int entry;
 int syncnum;

 nsp32_dbg(NSP32_DEBUG_MSGINOCCUR, "enter");

 synct = data->synct;
 syncnum = data->syncnum;
 if (target->sync_flag & SDTR_INITIATOR) {




  nsp32_dbg(NSP32_DEBUG_MSGINOCCUR, "target responds SDTR");

  target->sync_flag &= ~SDTR_INITIATOR;
  target->sync_flag |= SDTR_DONE;




  if (get_offset > SYNC_OFFSET) {




   goto reject;
  }

  if (get_offset == ASYNC_OFFSET) {




   goto async;
  }
  if (get_period < data->synct[0].period_num) {




   goto reject;
  }

  entry = nsp32_search_period_entry(data, target, get_period);

  if (entry < 0) {




   goto reject;
  }




  nsp32_set_sync_entry(data, target, entry, get_offset);
 } else {

  nsp32_dbg(NSP32_DEBUG_MSGINOCCUR, "target send SDTR");

  target->sync_flag |= SDTR_INITIATOR;


  if (get_offset > SYNC_OFFSET) {

   get_offset = SYNC_OFFSET;
  }


  if (get_period < data->synct[0].period_num) {
   get_period = data->synct[0].period_num;
  }

  entry = nsp32_search_period_entry(data, target, get_period);

  if (get_offset == ASYNC_OFFSET || entry < 0) {
   nsp32_set_async(data, target);
   nsp32_build_sdtr(SCpnt, 0, ASYNC_OFFSET);
  } else {
   nsp32_set_sync_entry(data, target, entry, get_offset);
   nsp32_build_sdtr(SCpnt, get_period, get_offset);
  }
 }

 target->period = get_period;
 nsp32_dbg(NSP32_DEBUG_MSGINOCCUR, "exit");
 return;

 reject:




 nsp32_build_reject(SCpnt);

 async:
 nsp32_set_async(data, target);

 target->period = 0;
 nsp32_dbg(NSP32_DEBUG_MSGINOCCUR, "exit: set async");
 return;
}
