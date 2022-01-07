
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;


 int DRIVER_ERROR ;
 int GFP_NOIO ;
 int SCSI_SENSE_BUFFERSIZE ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int scsi_execute (struct scsi_device*,unsigned char const*,int,void*,unsigned int,char*,int,int,int ,int*) ;
 int scsi_normalize_sense (char*,int ,struct scsi_sense_hdr*) ;

int scsi_execute_req(struct scsi_device *sdev, const unsigned char *cmd,
       int data_direction, void *buffer, unsigned bufflen,
       struct scsi_sense_hdr *sshdr, int timeout, int retries,
       int *resid)
{
 char *sense = ((void*)0);
 int result;

 if (sshdr) {
  sense = kzalloc(SCSI_SENSE_BUFFERSIZE, GFP_NOIO);
  if (!sense)
   return DRIVER_ERROR << 24;
 }
 result = scsi_execute(sdev, cmd, data_direction, buffer, bufflen,
         sense, timeout, retries, 0, resid);
 if (sshdr)
  scsi_normalize_sense(sense, SCSI_SENSE_BUFFERSIZE, sshdr);

 kfree(sense);
 return result;
}
