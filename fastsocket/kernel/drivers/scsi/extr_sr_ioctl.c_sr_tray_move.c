
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int* cmd; int timeout; int data_direction; } ;
struct cdrom_device_info {int * handle; } ;
typedef int Scsi_CD ;


 int DMA_NONE ;
 int GPCMD_START_STOP_UNIT ;
 int IOCTL_TIMEOUT ;
 int memset (struct packet_command*,int ,int) ;
 int sr_do_ioctl (int *,struct packet_command*) ;

int sr_tray_move(struct cdrom_device_info *cdi, int pos)
{
 Scsi_CD *cd = cdi->handle;
 struct packet_command cgc;

 memset(&cgc, 0, sizeof(struct packet_command));
 cgc.cmd[0] = GPCMD_START_STOP_UNIT;
 cgc.cmd[4] = (pos == 0) ? 0x03 : 0x02 ;
 cgc.data_direction = DMA_NONE;
 cgc.timeout = IOCTL_TIMEOUT;
 return sr_do_ioctl(cd, &cgc);
}
