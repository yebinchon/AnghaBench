
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct packet_command {int* cmd; unsigned char* buffer; int buflen; int timeout; int data_direction; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ cdi; } ;
typedef TYPE_2__ Scsi_CD ;


 int DMA_FROM_DEVICE ;
 int GPCMD_READ_CD ;
 int IOCTL_TIMEOUT ;
 int memset (struct packet_command*,int ,int) ;
 int printk (char*,int ,int,int,int) ;
 int sr_do_ioctl (TYPE_2__*,struct packet_command*) ;

__attribute__((used)) static int sr_read_cd(Scsi_CD *cd, unsigned char *dest, int lba, int format, int blksize)
{
 struct packet_command cgc;






 memset(&cgc, 0, sizeof(struct packet_command));
 cgc.cmd[0] = GPCMD_READ_CD;
 cgc.cmd[1] = ((format & 7) << 2);
 cgc.cmd[2] = (unsigned char) (lba >> 24) & 0xff;
 cgc.cmd[3] = (unsigned char) (lba >> 16) & 0xff;
 cgc.cmd[4] = (unsigned char) (lba >> 8) & 0xff;
 cgc.cmd[5] = (unsigned char) lba & 0xff;
 cgc.cmd[8] = 1;
 switch (blksize) {
 case 2336:
  cgc.cmd[9] = 0x58;
  break;
 case 2340:
  cgc.cmd[9] = 0x78;
  break;
 case 2352:
  cgc.cmd[9] = 0xf8;
  break;
 default:
  cgc.cmd[9] = 0x10;
  break;
 }
 cgc.buffer = dest;
 cgc.buflen = blksize;
 cgc.data_direction = DMA_FROM_DEVICE;
 cgc.timeout = IOCTL_TIMEOUT;
 return sr_do_ioctl(cd, &cgc);
}
