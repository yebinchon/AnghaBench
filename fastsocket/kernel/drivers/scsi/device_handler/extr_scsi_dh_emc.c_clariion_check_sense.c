
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;


 int ADD_TO_MLQUEUE ;


 int SCSI_RETURN_NOT_HANDLED ;
 int SUCCESS ;


__attribute__((used)) static int clariion_check_sense(struct scsi_device *sdev,
    struct scsi_sense_hdr *sense_hdr)
{
 switch (sense_hdr->sense_key) {
 case 129:
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0x03)
   return SUCCESS;
  break;
 case 130:
  if (sense_hdr->asc == 0x25 && sense_hdr->ascq == 0x01)
   return SUCCESS;
  break;
 case 128:
  if (sense_hdr->asc == 0x29 && sense_hdr->ascq == 0x00)




   return ADD_TO_MLQUEUE;
  break;
 }

 return SCSI_RETURN_NOT_HANDLED;
}
