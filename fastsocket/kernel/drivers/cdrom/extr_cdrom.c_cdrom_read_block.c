
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {int* cmd; int buflen; } ;
struct cdrom_device_ops {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;
struct cdrom_device_info {struct cdrom_device_ops* ops; } ;





 int GPCMD_READ_CD ;
 int memset (int**,int ,int) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int cdrom_read_block(struct cdrom_device_info *cdi,
       struct packet_command *cgc,
       int lba, int nblocks, int format, int blksize)
{
 struct cdrom_device_ops *cdo = cdi->ops;

 memset(&cgc->cmd, 0, sizeof(cgc->cmd));
 cgc->cmd[0] = GPCMD_READ_CD;

 cgc->cmd[1] = format << 2;

 cgc->cmd[2] = (lba >> 24) & 0xff;
 cgc->cmd[3] = (lba >> 16) & 0xff;
 cgc->cmd[4] = (lba >> 8) & 0xff;
 cgc->cmd[5] = lba & 0xff;

 cgc->cmd[6] = (nblocks >> 16) & 0xff;
 cgc->cmd[7] = (nblocks >> 8) & 0xff;
 cgc->cmd[8] = nblocks & 0xff;
 cgc->buflen = blksize * nblocks;


 switch (blksize) {
 case 129 : cgc->cmd[9] = 0x58; break;
 case 128 : cgc->cmd[9] = 0x78; break;
 case 130 : cgc->cmd[9] = 0xf8; break;
 default : cgc->cmd[9] = 0x10;
 }

 return cdo->generic_packet(cdi, cgc);
}
