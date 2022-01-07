
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;


 int HP_SW_NAME ;
 int KERN_WARNING ;

 int SCSI_DH_DEV_OFFLINED ;
 int SCSI_DH_IMM_RETRY ;
 int SCSI_DH_IO ;
 int SCSI_SENSE_BUFFERSIZE ;

 int scsi_normalize_sense (unsigned char*,int ,struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,...) ;

__attribute__((used)) static int tur_done(struct scsi_device *sdev, unsigned char *sense)
{
 struct scsi_sense_hdr sshdr;
 int ret;

 ret = scsi_normalize_sense(sense, SCSI_SENSE_BUFFERSIZE, &sshdr);
 if (!ret) {
  sdev_printk(KERN_WARNING, sdev,
       "%s: sending tur failed, no sense available\n",
       HP_SW_NAME);
  ret = SCSI_DH_IO;
  goto done;
 }
 switch (sshdr.sense_key) {
 case 128:
  ret = SCSI_DH_IMM_RETRY;
  break;
 case 129:
  if ((sshdr.asc == 0x04) && (sshdr.ascq == 2)) {





   ret = SCSI_DH_DEV_OFFLINED;
   break;
  }

 default:
  sdev_printk(KERN_WARNING, sdev,
      "%s: sending tur failed, sense %x/%x/%x\n",
      HP_SW_NAME, sshdr.sense_key, sshdr.asc,
      sshdr.ascq);
  break;
 }

done:
 return ret;
}
