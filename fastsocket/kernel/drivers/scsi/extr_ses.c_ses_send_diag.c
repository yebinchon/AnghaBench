
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_device {int dummy; } ;


 int DMA_TO_DEVICE ;
 int KERN_ERR ;
 int SEND_DIAGNOSTIC ;
 int SES_RETRIES ;
 int SES_TIMEOUT ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,void*,int,int *,int ,int ,int *) ;
 int sdev_printk (int ,struct scsi_device*,char*,int) ;

__attribute__((used)) static int ses_send_diag(struct scsi_device *sdev, int page_code,
    void *buf, int bufflen)
{
 u32 result;

 unsigned char cmd[] = {
  SEND_DIAGNOSTIC,
  0x10,
  0,
  bufflen >> 8,
  bufflen & 0xff,
  0
 };

 result = scsi_execute_req(sdev, cmd, DMA_TO_DEVICE, buf, bufflen,
      ((void*)0), SES_TIMEOUT, SES_RETRIES, ((void*)0));
 if (result)
  sdev_printk(KERN_ERR, sdev, "SEND DIAGNOSTIC result: %8x\n",
       result);
 return result;
}
