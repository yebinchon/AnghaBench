
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_sense_hdr {scalar_t__ sense_key; } ;
struct scsi_device {int changed; } ;


 int DMA_NONE ;
 int MAX_RETRIES ;
 int SR_TIMEOUT ;
 int TEST_UNIT_READY ;
 scalar_t__ UNIT_ATTENTION ;
 int scsi_execute_req (struct scsi_device*,int *,int ,int *,int ,struct scsi_sense_hdr*,int ,int ,int *) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int scsi_status_is_good (int) ;

int sr_test_unit_ready(struct scsi_device *sdev, struct scsi_sense_hdr *sshdr)
{
 int retries = MAX_RETRIES;
 int the_result;
 u8 cmd[] = {TEST_UNIT_READY, 0, 0, 0, 0, 0 };




 do {
  the_result = scsi_execute_req(sdev, cmd, DMA_NONE, ((void*)0),
           0, sshdr, SR_TIMEOUT,
           retries--, ((void*)0));
  if (scsi_sense_valid(sshdr) &&
      sshdr->sense_key == UNIT_ATTENTION)
   sdev->changed = 1;

 } while (retries > 0 &&
   (!scsi_status_is_good(the_result) ||
    (scsi_sense_valid(sshdr) &&
     sshdr->sense_key == UNIT_ATTENTION)));
 return the_result;
}
