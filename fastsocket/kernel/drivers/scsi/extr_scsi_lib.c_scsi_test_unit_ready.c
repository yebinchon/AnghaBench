
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; } ;
struct scsi_device {int changed; scalar_t__ removable; } ;


 int DMA_NONE ;
 int GFP_KERNEL ;
 scalar_t__ NOT_READY ;
 char TEST_UNIT_READY ;
 scalar_t__ UNIT_ATTENTION ;
 int kfree (struct scsi_sense_hdr*) ;
 struct scsi_sense_hdr* kzalloc (int,int ) ;
 int scsi_execute_req (struct scsi_device*,char*,int ,int *,int ,struct scsi_sense_hdr*,int,int,int *) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;

int
scsi_test_unit_ready(struct scsi_device *sdev, int timeout, int retries,
       struct scsi_sense_hdr *sshdr_external)
{
 char cmd[] = {
  TEST_UNIT_READY, 0, 0, 0, 0, 0,
 };
 struct scsi_sense_hdr *sshdr;
 int result;

 if (!sshdr_external)
  sshdr = kzalloc(sizeof(*sshdr), GFP_KERNEL);
 else
  sshdr = sshdr_external;


 do {
  result = scsi_execute_req(sdev, cmd, DMA_NONE, ((void*)0), 0, sshdr,
       timeout, retries, ((void*)0));
  if (sdev->removable && scsi_sense_valid(sshdr) &&
      sshdr->sense_key == UNIT_ATTENTION)
   sdev->changed = 1;
 } while (scsi_sense_valid(sshdr) &&
   sshdr->sense_key == UNIT_ATTENTION && --retries);

 if (!sshdr)

  return result;

 if (sdev->removable && scsi_sense_valid(sshdr) &&
     (sshdr->sense_key == UNIT_ATTENTION ||
      sshdr->sense_key == NOT_READY)) {
  sdev->changed = 1;
  result = 0;
 }
 if (!sshdr_external)
  kfree(sshdr);
 return result;
}
