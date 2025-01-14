
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_sense_hdr {int response_code; int sense_key; int asc; int ascq; int additional_length; } ;


 int memset (struct scsi_sense_hdr*,int ,int) ;
 int scsi_sense_valid (struct scsi_sense_hdr*) ;

int scsi_normalize_sense(const u8 *sense_buffer, int sb_len,
                         struct scsi_sense_hdr *sshdr)
{
 if (!sense_buffer || !sb_len)
  return 0;

 memset(sshdr, 0, sizeof(struct scsi_sense_hdr));

 sshdr->response_code = (sense_buffer[0] & 0x7f);

 if (!scsi_sense_valid(sshdr))
  return 0;

 if (sshdr->response_code >= 0x72) {



  if (sb_len > 1)
   sshdr->sense_key = (sense_buffer[1] & 0xf);
  if (sb_len > 2)
   sshdr->asc = sense_buffer[2];
  if (sb_len > 3)
   sshdr->ascq = sense_buffer[3];
  if (sb_len > 7)
   sshdr->additional_length = sense_buffer[7];
 } else {



  if (sb_len > 2)
   sshdr->sense_key = (sense_buffer[2] & 0xf);
  if (sb_len > 7) {
   sb_len = (sb_len < (sense_buffer[7] + 8)) ?
      sb_len : (sense_buffer[7] + 8);
   if (sb_len > 12)
    sshdr->asc = sense_buffer[12];
   if (sb_len > 13)
    sshdr->ascq = sense_buffer[13];
  }
 }

 return 1;
}
