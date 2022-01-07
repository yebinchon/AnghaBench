
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;


 int ADD_TO_MLQUEUE ;

 int SCSI_RETURN_NOT_HANDLED ;
 int SUCCESS ;


__attribute__((used)) static int alua_check_sense(struct scsi_device *sdev,
       struct scsi_sense_hdr *sense_hdr)
{
 switch (sense_hdr->sense_key) {
 case 129:
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0x0a)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0x0b)



   return SUCCESS;
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0x0c)



   return SUCCESS;
  if (sense_hdr->asc == 0x04 && sense_hdr->ascq == 0x12)



   return SUCCESS;
  break;
 case 128:
  if (sense_hdr->asc == 0x29 && sense_hdr->ascq == 0x00)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x2a && sense_hdr->ascq == 0x01)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x2a && sense_hdr->ascq == 0x06)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x2a && sense_hdr->ascq == 0x07)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x3f && sense_hdr->ascq == 0x03)



   return ADD_TO_MLQUEUE;
  if (sense_hdr->asc == 0x3f && sense_hdr->ascq == 0x0e)





   return ADD_TO_MLQUEUE;
  break;
 }

 return SCSI_RETURN_NOT_HANDLED;
}
