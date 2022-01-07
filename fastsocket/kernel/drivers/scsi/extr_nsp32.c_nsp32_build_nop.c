
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_6__ {int msgout_len; int * msgoutbuf; } ;
typedef TYPE_3__ nsp32_hw_data ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int KERN_WARNING ;
 int NOP ;
 int nsp32_msg (int ,char*) ;

__attribute__((used)) static void nsp32_build_nop(struct scsi_cmnd *SCpnt)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 int pos = data->msgout_len;

 if (pos != 0) {
  nsp32_msg(KERN_WARNING,
     "Some messages are already contained!");
  return;
 }

 data->msgoutbuf[pos] = NOP; pos++;
 data->msgout_len = pos;
}
