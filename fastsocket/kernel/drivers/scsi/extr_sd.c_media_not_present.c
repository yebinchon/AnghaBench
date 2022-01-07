
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; int asc; } ;
struct scsi_disk {int dummy; } ;


 scalar_t__ NOT_READY ;
 scalar_t__ UNIT_ATTENTION ;
 int scsi_sense_valid (struct scsi_sense_hdr*) ;
 int set_media_not_present (struct scsi_disk*) ;

__attribute__((used)) static int media_not_present(struct scsi_disk *sdkp,
        struct scsi_sense_hdr *sshdr)
{

 if (!scsi_sense_valid(sshdr))
  return 0;

 if (sshdr->sense_key != NOT_READY &&
     sshdr->sense_key != UNIT_ATTENTION)
  return 0;
 if (sshdr->asc != 0x3A)
  return 0;

 set_media_not_present(sdkp);
 return 1;
}
