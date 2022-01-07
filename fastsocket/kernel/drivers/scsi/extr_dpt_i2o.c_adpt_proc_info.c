
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct adpt_device {struct adpt_device* next_lun; TYPE_5__* pScsi_dev; scalar_t__ scsi_lun; scalar_t__ scsi_id; scalar_t__ scsi_channel; TYPE_3__* pI2o_dev; } ;
struct Scsi_Host {int host_no; int irq; int can_queue; int sg_tablesize; } ;
typedef int off_t ;
struct TYPE_10__ {char* detail; char* name; TYPE_1__* channel; scalar_t__ reply_fifo_size; struct Scsi_Host* host; struct TYPE_10__* next; } ;
typedef TYPE_4__ adpt_hba ;
struct TYPE_11__ {char* vendor; char* rev; } ;
struct TYPE_8__ {int tid; } ;
struct TYPE_9__ {TYPE_2__ lct_data; } ;
struct TYPE_7__ {struct adpt_device** device; } ;


 char* DPT_I2O_VERSION ;
 int EINVAL ;
 int MAX_CHANNEL ;
 int MAX_ID ;
 int TRUE ;
 int adpt_configuration_lock ;
 TYPE_4__* hba_chain ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scsi_device_online (TYPE_5__*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int adpt_proc_info(struct Scsi_Host *host, char *buffer, char **start, off_t offset,
    int length, int inout)
{
 struct adpt_device* d;
 int id;
 int chan;
 int len = 0;
 int begin = 0;
 int pos = 0;
 adpt_hba* pHba;
 int unit;

 *start = buffer;
 if (inout == TRUE) {







  return -EINVAL;
 }
 mutex_lock(&adpt_configuration_lock);
 for (pHba = hba_chain; pHba; pHba = pHba->next) {
  if (pHba->host == host) {
   break;
  }
 }
 mutex_unlock(&adpt_configuration_lock);
 if (pHba == ((void*)0)) {
  return 0;
 }
 host = pHba->host;

 len = sprintf(buffer , "Adaptec I2O RAID Driver Version: %s\n\n", DPT_I2O_VERSION);
 len += sprintf(buffer+len, "%s\n", pHba->detail);
 len += sprintf(buffer+len, "SCSI Host=scsi%d  Control Node=/dev/%s  irq=%d\n",
   pHba->host->host_no, pHba->name, host->irq);
 len += sprintf(buffer+len, "\tpost fifo size  = %d\n\treply fifo size = %d\n\tsg table size   = %d\n\n",
   host->can_queue, (int) pHba->reply_fifo_size , host->sg_tablesize);

 pos = begin + len;


 if(pos > offset + length) {
  goto stop_output;
 }
 if(pos <= offset) {





  len = 0;
  begin = pos;
 }
 len += sprintf(buffer+len, "Devices:\n");
 for(chan = 0; chan < MAX_CHANNEL; chan++) {
  for(id = 0; id < MAX_ID; id++) {
   d = pHba->channel[chan].device[id];
   while(d){
    len += sprintf(buffer+len,"\t%-24.24s", d->pScsi_dev->vendor);
    len += sprintf(buffer+len," Rev: %-8.8s\n", d->pScsi_dev->rev);
    pos = begin + len;



    if(pos > offset + length) {
     goto stop_output;
    }
    if(pos <= offset) {
     len = 0;
     begin = pos;
    }

    unit = d->pI2o_dev->lct_data.tid;
    len += sprintf(buffer+len, "\tTID=%d, (Channel=%d, Target=%d, Lun=%d)  (%s)\n\n",
            unit, (int)d->scsi_channel, (int)d->scsi_id, (int)d->scsi_lun,
            scsi_device_online(d->pScsi_dev)? "online":"offline");
    pos = begin + len;


    if(pos > offset + length) {
     goto stop_output;
    }
    if(pos <= offset) {
     len = 0;
     begin = pos;
    }

    d = d->next_lun;
   }
  }
 }







stop_output:

 *(buffer + len) = '\0';

 *start = buffer + (offset - begin);
 len -= (offset - begin);
 if(len > length) {
  len = length;
 } else if(len < 0){
  len = 0;
  **start = '\0';
 }
 return len;
}
