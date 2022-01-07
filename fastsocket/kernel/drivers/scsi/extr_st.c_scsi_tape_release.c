
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape {struct scsi_tape* buffer; struct scsi_tape* reserved_pages; int * device; struct gendisk* disk; } ;
struct kref {int dummy; } ;
struct gendisk {int * private_data; } ;


 int kfree (struct scsi_tape*) ;
 int normalize_buffer (struct scsi_tape*) ;
 int put_disk (struct gendisk*) ;
 struct scsi_tape* to_scsi_tape (struct kref*) ;

__attribute__((used)) static void scsi_tape_release(struct kref *kref)
{
 struct scsi_tape *tpnt = to_scsi_tape(kref);
 struct gendisk *disk = tpnt->disk;

 tpnt->device = ((void*)0);

 if (tpnt->buffer) {
  normalize_buffer(tpnt->buffer);
  kfree(tpnt->buffer->reserved_pages);
  kfree(tpnt->buffer);
 }

 disk->private_data = ((void*)0);
 put_disk(disk);
 kfree(tpnt);
 return;
}
