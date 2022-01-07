
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int* cmd; char* buffer; int buflen; int timeout; int data_direction; } ;
struct cdrom_mcn {scalar_t__* medium_catalog_number; } ;
struct cdrom_device_info {int * handle; } ;
typedef int Scsi_CD ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPCMD_READ_SUBCHANNEL ;
 int IOCTL_TIMEOUT ;
 int SR_GFP_DMA (int *) ;
 int kfree (char*) ;
 char* kmalloc (int,int) ;
 int memcpy (scalar_t__*,char*,int) ;
 int memset (struct packet_command*,int ,int) ;
 int sr_do_ioctl (int *,struct packet_command*) ;

int sr_get_mcn(struct cdrom_device_info *cdi, struct cdrom_mcn *mcn)
{
 Scsi_CD *cd = cdi->handle;
 struct packet_command cgc;
 char *buffer = kmalloc(32, GFP_KERNEL | SR_GFP_DMA(cd));
 int result;

 if (!buffer)
  return -ENOMEM;

 memset(&cgc, 0, sizeof(struct packet_command));
 cgc.cmd[0] = GPCMD_READ_SUBCHANNEL;
 cgc.cmd[2] = 0x40;
 cgc.cmd[3] = 0x02;
 cgc.cmd[8] = 24;
 cgc.buffer = buffer;
 cgc.buflen = 24;
 cgc.data_direction = DMA_FROM_DEVICE;
 cgc.timeout = IOCTL_TIMEOUT;
 result = sr_do_ioctl(cd, &cgc);

 memcpy(mcn->medium_catalog_number, buffer + 9, 13);
 mcn->medium_catalog_number[13] = 0;

 kfree(buffer);
 return result;
}
