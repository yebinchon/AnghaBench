
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_mode_data {int dummy; } ;
struct scsi_device {int dummy; } ;


 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 int scsi_mode_sense (struct scsi_device*,int,int,unsigned char*,int,int ,int ,struct scsi_mode_data*,struct scsi_sense_hdr*) ;

__attribute__((used)) static inline int
sd_do_mode_sense(struct scsi_device *sdp, int dbd, int modepage,
   unsigned char *buffer, int len, struct scsi_mode_data *data,
   struct scsi_sense_hdr *sshdr)
{
 return scsi_mode_sense(sdp, dbd, modepage, buffer, len,
          SD_TIMEOUT, SD_MAX_RETRIES, data,
          sshdr);
}
