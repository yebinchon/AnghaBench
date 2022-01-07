
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int RECEIVE_DIAGNOSTIC ;
 int SES_RETRIES ;
 int SES_TIMEOUT ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,void*,int,int *,int ,int ,int *) ;

__attribute__((used)) static int ses_recv_diag(struct scsi_device *sdev, int page_code,
    void *buf, int bufflen)
{
 unsigned char cmd[] = {
  RECEIVE_DIAGNOSTIC,
  1,
  page_code,
  bufflen >> 8,
  bufflen & 0xff,
  0
 };

 return scsi_execute_req(sdev, cmd, DMA_FROM_DEVICE, buf, bufflen,
    ((void*)0), SES_TIMEOUT, SES_RETRIES, ((void*)0));
}
