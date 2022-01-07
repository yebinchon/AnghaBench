
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cd {int dummy; } ;
struct packet_command {int data_direction; int * cmd; int timeout; } ;
struct cdrom_ti {int cdti_ind1; int cdti_trk1; int cdti_ind0; int cdti_trk0; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;


 int DMA_NONE ;
 int EDRIVE_CANT_DO_THIS ;
 int GPCMD_PLAYAUDIO_TI ;
 int IOCTL_TIMEOUT ;
 int memset (struct packet_command*,int ,int) ;
 int sr_do_ioctl (struct scsi_cd*,struct packet_command*) ;
 int sr_fake_playtrkind (struct cdrom_device_info*,struct cdrom_ti*) ;

__attribute__((used)) static int sr_play_trkind(struct cdrom_device_info *cdi,
  struct cdrom_ti *ti)

{
 struct scsi_cd *cd = cdi->handle;
 struct packet_command cgc;
 int result;

 memset(&cgc, 0, sizeof(struct packet_command));
 cgc.timeout = IOCTL_TIMEOUT;
 cgc.cmd[0] = GPCMD_PLAYAUDIO_TI;
 cgc.cmd[4] = ti->cdti_trk0;
 cgc.cmd[5] = ti->cdti_ind0;
 cgc.cmd[7] = ti->cdti_trk1;
 cgc.cmd[8] = ti->cdti_ind1;
 cgc.data_direction = DMA_NONE;

 result = sr_do_ioctl(cd, &cgc);
 if (result == -EDRIVE_CANT_DO_THIS)
  result = sr_fake_playtrkind(cdi, ti);

 return result;
}
