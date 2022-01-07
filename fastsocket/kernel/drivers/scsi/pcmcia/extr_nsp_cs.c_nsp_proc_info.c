
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int host_no; int this_id; int sg_tablesize; int base; scalar_t__ n_io_port; int io_port; int irq; scalar_t__ hostdata; } ;
typedef int off_t ;
struct TYPE_3__ {TYPE_2__* Sync; int Lock; int CurrentSC; scalar_t__ MmioLength; } ;
typedef TYPE_1__ nsp_hw_data ;
struct TYPE_4__ {int SyncNegotiation; int SyncPeriod; int SyncOffset; } ;


 int ARRAY_SIZE (TYPE_2__*) ;



 int EINVAL ;
 int SPRINTF (char*,...) ;



 int min (int,int) ;
 int nsp_burst_mode ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int nsp_proc_info(struct Scsi_Host *host, char *buffer, char **start,
    off_t offset, int length, int inout)
{
 int id;
 char *pos = buffer;
 int thislength;
 int speed;
 unsigned long flags;
 nsp_hw_data *data;
 int hostno;

 if (inout) {
  return -EINVAL;
 }

 hostno = host->host_no;
 data = (nsp_hw_data *)host->hostdata;


 SPRINTF("NinjaSCSI status\n\n");
 SPRINTF("Driver version:        $Revision: 1.23 $\n");
 SPRINTF("SCSI host No.:         %d\n", hostno);
 SPRINTF("IRQ:                   %d\n", host->irq);
 SPRINTF("IO:                    0x%lx-0x%lx\n", host->io_port, host->io_port + host->n_io_port - 1);
 SPRINTF("MMIO(virtual address): 0x%lx-0x%lx\n", host->base, host->base + data->MmioLength - 1);
 SPRINTF("sg_tablesize:          %d\n", host->sg_tablesize);

 SPRINTF("burst transfer mode:   ");
 switch (nsp_burst_mode) {
 case 132:
  SPRINTF("io8");
  break;
 case 133:
  SPRINTF("io32");
  break;
 case 131:
  SPRINTF("mem32");
  break;
 default:
  SPRINTF("???");
  break;
 }
 SPRINTF("\n");


 spin_lock_irqsave(&(data->Lock), flags);
 SPRINTF("CurrentSC:             0x%p\n\n", data->CurrentSC);
 spin_unlock_irqrestore(&(data->Lock), flags);

 SPRINTF("SDTR status\n");
 for(id = 0; id < ARRAY_SIZE(data->Sync); id++) {

  SPRINTF("id %d: ", id);

  if (id == host->this_id) {
   SPRINTF("----- NinjaSCSI-3 host adapter\n");
   continue;
  }

  switch(data->Sync[id].SyncNegotiation) {
  case 128:
   SPRINTF(" sync");
   break;
  case 130:
   SPRINTF("async");
   break;
  case 129:
   SPRINTF(" none");
   break;
  default:
   SPRINTF("?????");
   break;
  }

  if (data->Sync[id].SyncPeriod != 0) {
   speed = 1000000 / (data->Sync[id].SyncPeriod * 4);

   SPRINTF(" transfer %d.%dMB/s, offset %d",
    speed / 1000,
    speed % 1000,
    data->Sync[id].SyncOffset
    );
  }
  SPRINTF("\n");
 }

 thislength = pos - (buffer + offset);

 if(thislength < 0) {
  *start = ((void*)0);
                return 0;
        }


 thislength = min(thislength, length);
 *start = buffer + offset;

 return thislength;
}
