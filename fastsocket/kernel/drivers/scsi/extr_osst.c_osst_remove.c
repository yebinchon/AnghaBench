
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ type; } ;
struct osst_tape {struct osst_tape* buffer; int header_cache; int drive; struct scsi_device* device; } ;
struct device {int dummy; } ;


 int MKDEV (int ,int) ;
 int OSST_MAJOR ;
 scalar_t__ TYPE_TAPE ;
 int kfree (struct osst_tape*) ;
 int normalize_buffer (struct osst_tape*) ;
 struct osst_tape** os_scsi_tapes ;
 int os_scsi_tapes_lock ;
 int osst_max_dev ;
 scalar_t__ osst_nr_dev ;
 int osst_sysfs_destroy (int ) ;
 int put_disk (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;
 int vfree (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int osst_remove(struct device *dev)
{
 struct scsi_device * SDp = to_scsi_device(dev);
 struct osst_tape * tpnt;
 int i;

 if ((SDp->type != TYPE_TAPE) || (osst_nr_dev <= 0))
  return 0;

 write_lock(&os_scsi_tapes_lock);
 for(i=0; i < osst_max_dev; i++) {
  if((tpnt = os_scsi_tapes[i]) && (tpnt->device == SDp)) {
   osst_sysfs_destroy(MKDEV(OSST_MAJOR, i));
   osst_sysfs_destroy(MKDEV(OSST_MAJOR, i+128));
   tpnt->device = ((void*)0);
   put_disk(tpnt->drive);
   os_scsi_tapes[i] = ((void*)0);
   osst_nr_dev--;
   write_unlock(&os_scsi_tapes_lock);
   vfree(tpnt->header_cache);
   if (tpnt->buffer) {
    normalize_buffer(tpnt->buffer);
    kfree(tpnt->buffer);
   }
   kfree(tpnt);
   return 0;
  }
 }
 write_unlock(&os_scsi_tapes_lock);
 return 0;
}
