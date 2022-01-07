
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int lun; TYPE_1__* vtarget; int configured_lun; } ;
typedef TYPE_2__ VirtDevice ;
struct TYPE_8__ {int physDiskNum; int data_dma; int lun; int id; int channel; scalar_t__ rsvd2; scalar_t__ rsvd; scalar_t__ size; int * data; scalar_t__ flags; int cmd; } ;
struct TYPE_6__ {int tflags; scalar_t__ type; int id; int channel; scalar_t__ deleted; } ;
typedef int MPT_SCSI_HOST ;
typedef TYPE_3__ INTERNAL_CMD ;


 int MPT_TARGET_FLAGS_RAID_COMPONENT ;
 int SYNCHRONIZE_CACHE ;
 scalar_t__ TYPE_DISK ;
 int mptscsih_do_cmd (int *,TYPE_3__*) ;

__attribute__((used)) static void
mptscsih_synchronize_cache(MPT_SCSI_HOST *hd, VirtDevice *vdevice)
{
 INTERNAL_CMD iocmd;




 if (vdevice->vtarget->tflags & MPT_TARGET_FLAGS_RAID_COMPONENT)
  return;

 if (vdevice->vtarget->type != TYPE_DISK || vdevice->vtarget->deleted ||
     !vdevice->configured_lun)
  return;




 iocmd.cmd = SYNCHRONIZE_CACHE;
 iocmd.flags = 0;
 iocmd.physDiskNum = -1;
 iocmd.data = ((void*)0);
 iocmd.data_dma = -1;
 iocmd.size = 0;
 iocmd.rsvd = iocmd.rsvd2 = 0;
 iocmd.channel = vdevice->vtarget->channel;
 iocmd.id = vdevice->vtarget->id;
 iocmd.lun = vdevice->lun;

 mptscsih_do_cmd(hd, &iocmd);
}
